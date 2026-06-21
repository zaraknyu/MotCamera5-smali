.class public final synthetic Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->switchPagerOrTips()V

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->switchPagerOrTips()V

    return-object v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rotateAnimationEndInvoke()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
