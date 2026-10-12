-- Run once in Supabase > SQL Editor
create table if not exists public.student_progress (
  user_id    uuid primary key references auth.users(id) on delete cascade,
  full_name  text not null default '',
  state      jsonb not null default '{"units":{}}'::jsonb,  -- lessons completed, activity scores, answers, last lesson
  updated_at timestamptz not null default now()
);

alter table public.student_progress enable row level security;

create policy "own row: select" on public.student_progress
  for select using (auth.uid() = user_id);
create policy "own row: insert" on public.student_progress
  for insert with check (auth.uid() = user_id);
create policy "own row: update" on public.student_progress
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
