import { defineCollection } from "astro:content";
import { glob } from "astro/loaders";
import { z } from "astro/zod";
import { apps } from "./data/apps";

const stackItem = z.union([
  z.string(),
  z.object({ name: z.string(), items: z.array(z.string()) }),
]);

const projects = defineCollection({
  loader: glob({ pattern: "*.md", base: "./src/content/projects" }),
  schema: z.object({
    year: z.number().int(),
    title: z.string(),
    personal: z.boolean().default(false),
    current: z.boolean().default(false),
    role: z.string().optional(),
    app: z
      .string()
      .refine((slug) => apps.some((app) => app.slug === slug), "src/data/apps.ts に無いアプリ")
      .optional(),
    stack: z.array(stackItem),
  }),
});

export const collections = { projects };
