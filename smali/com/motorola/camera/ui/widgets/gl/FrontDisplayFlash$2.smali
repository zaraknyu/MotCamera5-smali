.class public final Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    const/4 v1, 0x3

    rem-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource(II)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->updateProcessingPreview()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/common/SimpleWatchDog;

    iget-object p0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->runnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
