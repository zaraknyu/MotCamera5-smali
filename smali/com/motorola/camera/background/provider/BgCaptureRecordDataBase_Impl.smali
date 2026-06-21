.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;
.super Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;",
        "Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;",
        "<init>",
        "()V",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final _bgCaptureRecordDao:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;-><init>()V

    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->_bgCaptureRecordDao:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final captureRecordDao()Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->_bgCaptureRecordDao:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    return-object p0
.end method

.method public final createAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "bgCaptureRecord_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v2
.end method

.method public final createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;-><init>(Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;)V

    return-object v0
.end method

.method public final getRequiredAutoMigrationSpecClasses()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverterClasses()Ljava/util/LinkedHashMap;
    .locals 2

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
