.class public abstract Lcom/motorola/camera/shared/MotSysTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final begin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/motorola/camera/shared/Util;->KPI_SYSTRACE:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final beginAsync(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/motorola/camera/shared/Util;->KPI_SYSTRACE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final end()V
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/shared/Util;->KPI_SYSTRACE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public static final endAsync(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/motorola/camera/shared/Util;->KPI_SYSTRACE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
