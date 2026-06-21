.class public final Landroidx/window/layout/WindowInfoTracker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

.field public static final decorator:Landroidx/window/layout/EmptyDecorator;

.field public static final extensionBackend$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->$$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    sget-object v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;->INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->extensionBackend$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Landroidx/window/layout/EmptyDecorator;->INSTANCE:Landroidx/window/layout/EmptyDecorator;

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Landroidx/window/layout/EmptyDecorator;

    return-void
.end method

.method public static getOrCreate(Landroid/content/Context;)Landroidx/window/layout/FoldingFeature$State;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->extensionBackend$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/layout/adapter/WindowBackend;

    if-nez v0, :cond_5

    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    if-nez v0, :cond_4

    sget-object v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getSidecarVersion()Landroidx/window/core/Version;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    const-string v4, "other"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Landroidx/window/core/Version;->bigInteger$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getValue(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/math/BigInteger;

    iget-object v3, v3, Landroidx/window/core/Version;->bigInteger$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    new-instance v2, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    invoke-direct {v2, p0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->validateExtensionInterface()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :catchall_0
    :cond_2
    :goto_0
    :try_start_2
    new-instance p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    invoke-direct {p0, v0}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V

    sput-object p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_4
    :goto_3
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_5
    new-instance p0, Landroidx/window/layout/FoldingFeature$State;

    new-instance v1, Landroidx/window/layout/EmptyDecorator;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    invoke-direct {p0, v1, v0, v2}, Landroidx/window/layout/FoldingFeature$State;-><init>(Landroidx/window/layout/EmptyDecorator;Landroidx/window/layout/adapter/WindowBackend;Lcom/google/android/gms/dynamite/zzf;)V

    sget-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Landroidx/window/layout/EmptyDecorator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
