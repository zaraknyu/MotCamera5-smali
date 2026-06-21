.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$1:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isPaused:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->stopCounter()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget v3, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;->f$1:Z

    if-nez p0, :cond_2

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isPaused:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->stopCounter()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
