.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic f$1:Lcom/motorola/camera/PreviewDiff;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->f$1:Lcom/motorola/camera/PreviewDiff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->f$1:Lcom/motorola/camera/PreviewDiff;

    iget-boolean v0, v0, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->f$1:Lcom/motorola/camera/PreviewDiff;

    iget-boolean v0, v0, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda15;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
