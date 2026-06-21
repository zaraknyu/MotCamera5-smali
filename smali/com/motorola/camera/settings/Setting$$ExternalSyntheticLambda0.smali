.class public final synthetic Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/settings/Setting;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->handleVideoSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/VideoFormat;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    check-cast p1, Landroid/util/Size;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->handleVideoResolution(Lcom/motorola/camera/settings/Setting;Landroid/util/Size;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1, p0, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    invoke-static {p0, v1, p1}, Lcom/motorola/camera/settings/SettingsManager;->syncVideoFormat(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/VideoFormat;)V

    return-void

    :pswitch_2
    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_3
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
