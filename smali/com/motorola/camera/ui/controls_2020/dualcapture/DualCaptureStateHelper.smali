.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final instance$delegate:Ljava/lang/Object;


# instance fields
.field public allowClick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized setAllowClickState(Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->allowClick:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->allowClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
