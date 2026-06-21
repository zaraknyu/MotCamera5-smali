.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Lcom/motorola/camera/CameraData;

    move-object v2, p2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v3, p3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda40;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;ZLcom/motorola/camera/CameraData;ZI)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->submitTask(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
