.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->doDelayedDismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->removePostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReviewListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReviewListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
