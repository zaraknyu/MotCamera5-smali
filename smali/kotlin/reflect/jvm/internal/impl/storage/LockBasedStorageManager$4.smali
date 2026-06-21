.class public final Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;
.source "SourceFile"


# virtual methods
.method public final recursionDetected(Z)Lcom/motorola/camera/ui/DownUpDetector;
    .locals 2

    new-instance p0, Lcom/motorola/camera/ui/DownUpDetector;

    const/4 p1, 0x0

    const/16 v0, 0x8

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, v1, p1, v0}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Ljava/lang/Object;ZI)V

    return-object p0
.end method
