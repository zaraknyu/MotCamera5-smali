.class public final Landroidx/work/impl/utils/futures/SettableFuture;
.super Landroidx/work/impl/utils/futures/AbstractFuture;
.source "SourceFile"


# virtual methods
.method public final setException(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    invoke-direct {v0, p1}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzum;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzum;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
