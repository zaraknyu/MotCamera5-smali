.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p0, v0, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->locked:Z

    iget-boolean v0, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->locked:Z

    if-ne p0, v0, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->anyValueDisabled:Z

    iget-boolean p1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->anyValueDisabled:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    check-cast p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    iget-object v2, p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-object p2, p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v4, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    iget-wide p1, p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    cmp-long p1, v4, p1

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    move v1, v3

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    check-cast p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide p0

    iget-object p2, p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    check-cast p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-wide v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    iget-object p1, p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->guideParameters:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-wide v2, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    const-string p2, "ORIENTATION"

    iget p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->orientation:F

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
