.class public final synthetic Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->endViewParameter(Landroid/view/View;)V

    iget-object p0, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->ON_ANIMATION_END:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    iget-object v2, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->cameraData:Lcom/motorola/camera/CameraData;

    sget-object v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->INIT:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->onAction(Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;Lcom/motorola/camera/CameraData;)V

    :cond_1
    return-object v1

    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->ON_ANIMATION_BEGIN:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    iget-object v2, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->cameraData:Lcom/motorola/camera/CameraData;

    sget-object v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->INIT:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->onAction(Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;Lcom/motorola/camera/CameraData;)V

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
