.class public final Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;
.super Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    if-nez p1, :cond_0

    const p1, 0x7f120173

    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const p1, 0x7f120170

    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    return-void

    :cond_0
    const v0, 0x7f12015a

    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v1, p1, :cond_1

    const p1, 0x7f12051b

    goto :goto_0

    :cond_1
    const p1, 0x7f12051c

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f120158

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/String;

    new-instance p1, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p1, 0x7f120159

    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    return-void
.end method
