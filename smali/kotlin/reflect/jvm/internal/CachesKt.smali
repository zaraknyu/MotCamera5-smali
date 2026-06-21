.class public abstract Lkotlin/reflect/jvm/internal/CachesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K_CLASS_CACHE:Lcom/motorola/camera/CameraKpi;

.field public static final K_PACKAGE_CACHE:Lcom/motorola/camera/CameraKpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    sget v1, Lkotlin/reflect/jvm/internal/CacheByClassKt;->$r8$clinit:I

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lcom/motorola/camera/CameraKpi;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$1:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->K_PACKAGE_CACHE:Lcom/motorola/camera/CameraKpi;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static final getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 3

    const-string v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :cond_1
    :goto_0
    const-string p0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object v2
.end method
