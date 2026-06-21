.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final elapsedTimeTextView:Landroid/widget/TextView;

.field public final lengthTextView:Landroid/widget/TextView;

.field public final recordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

.field public final timelapseFormat:Ljava/lang/String;

.field public final timelapseGroup:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;Lcom/motorola/camera/capturedmediadata/RecordingTime;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "recordingTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timelapseFormat"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->recordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->elapsedTimeTextView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->timelapseGroup:Landroid/view/View;

    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->timelapseFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->recordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iget-wide v4, v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    sub-long/2addr v1, v4

    iget-wide v3, v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    const/4 v7, 0x0

    invoke-static {v7, v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v11

    iget-object v13, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->elapsedTimeTextView:Landroid/widget/TextView;

    const-string v14, "getContext(...)"

    if-eqz v11, :cond_2

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    iget-object v15, v15, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    move-wide/from16 v16, v3

    const/16 v3, 0x1e

    int-to-float v3, v3

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float v4, v3, v4

    float-to-int v4, v4

    move-object/from16 v18, v13

    int-to-long v12, v4

    div-long v12, v1, v12

    move/from16 v19, v3

    div-long v3, v12, v16

    invoke-static {v7, v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v12, v13}, Lcom/google/mlkit/common/internal/zze;->access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v15, 0x1

    invoke-static {v3, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->timelapseFormat:Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float v8, v19, v8

    float-to-int v8, v8

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v15, 0x1

    invoke-static {v8, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v12, "%dX"

    invoke-static {v11, v12, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x3c

    int-to-long v11, v11

    rem-long v13, v5, v11

    long-to-int v13, v13

    div-long v18, v5, v11

    move-object v14, v8

    rem-long v7, v18, v11

    long-to-int v7, v7

    const/16 v8, 0xe10

    move-wide/from16 v18, v5

    int-to-long v5, v8

    div-long v5, v18, v5

    rem-long/2addr v5, v11

    long-to-int v5, v5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v11, 0x7f100004

    invoke-virtual {v6, v11, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getQuantityString(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f100005

    invoke-virtual {v8, v12, v13, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v5, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const v13, 0x7f100003

    invoke-virtual {v11, v13, v5, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f120583

    filled-new-array {v5, v6, v8, v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f120582

    filled-new-array {v6, v8, v14}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->timelapseGroup:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    move-wide/from16 v16, v3

    move-object v4, v13

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/google/mlkit/common/internal/zze;->access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoTimerCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/cli/VideoTimerCallback;

    check-cast v5, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    iget-object v5, v5, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingTimer:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    :goto_3
    sget-boolean v3, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz v3, :cond_5

    const-wide/16 v5, 0xbb8

    rem-long v5, v1, v5

    const-wide/16 v7, 0xbc2

    sub-long/2addr v7, v5

    invoke-virtual {v9, v0, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_5
    rem-long v5, v1, v16

    const-wide/16 v7, 0x3f2

    sub-long/2addr v7, v5

    invoke-virtual {v9, v0, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    const/16 v3, 0x80

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->fixedWidth:I

    if-le v3, v4, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->fixedWidth:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->fixedWidth:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinWidth(I)V

    :cond_6
    if-nez v10, :cond_7

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->refreshUIAnimation$2()V

    :cond_7
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recorderTimingTask:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

    iget-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->isReady:Z

    if-eqz v3, :cond_a

    iget-wide v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->nextTaskScheduledTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_8

    goto :goto_6

    :cond_8
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->nextTaskScheduledTime:J

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;

    iget-wide v5, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;->scheduledTime:J

    cmp-long v7, v1, v5

    if-ltz v7, :cond_9

    iget-boolean v7, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;->isExecuted:Z

    if-nez v7, :cond_9

    iget-object v5, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;->task:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    const/4 v15, 0x1

    iput-boolean v15, v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;->isExecuted:Z

    goto :goto_5

    :cond_9
    const/4 v15, 0x1

    iput-wide v5, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->nextTaskScheduledTime:J

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method
