.class public final Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public isScheduled:Z

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->$r8$classId:I

    iput-object p2, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->$r8$classId:I

    iget-object v1, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-boolean p0, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    if-nez p0, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    invoke-interface {v0}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountDownFinish()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->countdownFinishRunnable:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    :cond_1
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    check-cast v1, Landroidx/media3/ui/AspectRatioFrameLayout;

    sget p0, Landroidx/media3/ui/AspectRatioFrameLayout;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
