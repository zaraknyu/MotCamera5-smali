.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cameraData:Lcom/motorola/camera/CameraData;

.field public final guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;)V
    .locals 1

    const-string v0, "cameraData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    return-void
.end method

.method public static copy$default(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;)Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    const-string v0, "cameraData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;-><init>(Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_fold.gallery.GalleryComposeAdapter.GalleryComposeData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GalleryComposeData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
