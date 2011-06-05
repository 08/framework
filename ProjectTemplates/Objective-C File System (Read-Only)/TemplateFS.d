#!/usr/sbin/dtrace -s

#pragma D option quiet

fuse4x_objc*:::delegate-entry 
/execname == "�PROJECTNAME�"/
{
    printf("%-14d %s: %s\n", timestamp, probefunc, copyinstr(arg0));
}
