.class public abstract Lkotlin/time/MonotonicTimeSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final zero:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/MonotonicTimeSource;->zero:J

    return-void
.end method
