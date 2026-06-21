.class public final synthetic Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

.field public final synthetic f$1:Lcom/motorola/camera/CameraData;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Lcom/motorola/camera/CameraData;Landroid/view/View;II)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/CameraData;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput p4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->onItemClick:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/CameraData;

    invoke-virtual {v0, p0, p1, v1}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->onItemClick:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/CameraData;

    invoke-virtual {v0, p0, p1, v1}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
