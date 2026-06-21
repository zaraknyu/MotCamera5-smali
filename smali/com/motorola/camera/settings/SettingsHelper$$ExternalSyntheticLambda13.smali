.class public final synthetic Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda13;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    check-cast p1, Landroid/util/Size;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
