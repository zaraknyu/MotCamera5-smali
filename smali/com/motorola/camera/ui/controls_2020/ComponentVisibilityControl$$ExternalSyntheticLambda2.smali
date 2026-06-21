.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic f$1:Lcom/motorola/camera/Notifier$TYPE;

.field public final synthetic f$2:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;

.field public final synthetic f$3:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/Notifier$TYPE;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;

    if-eqz p1, :cond_2

    check-cast p2, Landroid/os/Bundle;

    const-string p1, "IS_ANIM"

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "IS_SELECTED"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda13;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method
