.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;->$r8$classId:I

    const v1, 0x7f0800a6

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_AUTO_FPS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_REACH_MAX_DURATION:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->refreshUIAnimation$2()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoMaxDuration$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recorderTimingTask:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->maxDuration:I

    int-to-long v2, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->refreshUIAnimation$2()V

    return-void

    :pswitch_5
    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->$r8$lambda$yHcMXStXsvjDaLmbLmk01HtbzZE(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V

    return-void

    :pswitch_6
    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->$r8$lambda$jlof0ei-Wb7jque4Z_fP0XXSKzI(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V

    return-void

    :pswitch_7
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->setIdleUi(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iput-wide v1, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iput-wide v3, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    iput-wide v1, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->resetCounter()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recorderTimingTask:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->addAllTask()V

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recordingOrientation:I

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateHide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->stopCounter()V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->setIdleUi(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recorderTimingTask:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-wide v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->nextTaskScheduledTime:J

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateHide()V

    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateHide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->stopCounter()V

    return-void

    :pswitch_b
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isPaused:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :pswitch_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateShow()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->requestLayout()V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setResumeTime(Ljava/lang/Long;)V

    :cond_2
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isPaused:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->stopCounter()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->resetCounter()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateHide()V

    return-void

    :pswitch_12
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->setIdleUi(Z)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isControlPanelShown:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateShow()V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->startCounter(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    return-void

    :pswitch_13
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->setIdleUi(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
