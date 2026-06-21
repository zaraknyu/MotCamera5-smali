.class public final Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

.field public static final copilotAccessor$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static isAiLensAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    new-instance v0, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->copilotAccessor$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final declared-synchronized isAiLensAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
