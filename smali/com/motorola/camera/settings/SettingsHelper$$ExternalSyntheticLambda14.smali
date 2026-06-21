.class public final synthetic Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;->f$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;->f$0:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
