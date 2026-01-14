#!/usr/bin/env bash

mkdir -p App/src

echo 'using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Hello World!");
        Console.WriteLine("v0.1.0");
    }
}' > App/src/Program.cs

git add App/src/Program.cs
git commit -m "Initial release"

version1=v0.1.0
version2=v0.2.0

if git rev-parse "$version1" >/dev/null 2>&1; then
   git update-ref -d "refs/tags/$version1"
fi

if git rev-parse "$version2" >/dev/null 2>&1; then
   git update-ref -d "refs/tags/$version2"
fi

git tag "$version1"

echo 'using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Hello World!");
        Console.WriteLine("Added a new functionality!");
        Console.WriteLine("v0.2.0");
    }
}' > App/src/Program.cs
