.class public final Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Runnable;

.field public final synthetic val$displayOrientation:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->$r8$classId:I

    const/16 p3, 0x13

    invoke-direct {p0, p3}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Ljava/lang/Runnable;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->val$displayOrientation:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Ljava/lang/Runnable;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->val$displayOrientation:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Ljava/lang/Runnable;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->val$displayOrientation:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;->this$1:Ljava/lang/Runnable;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
