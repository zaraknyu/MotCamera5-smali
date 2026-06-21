.class public final Lg/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lg/a0;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    invoke-virtual {p0}, Lg/a0;->b()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lg/a0;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lg/a0;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .locals 2

    invoke-virtual {p0}, Lg/a0;->a()J

    move-result-wide v0

    return-wide v0
.end method
