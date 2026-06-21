.class final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureTextWatcher"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J(\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J(\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0019H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;",
        "Landroid/text/TextWatcher;",
        "watermarkEdit",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;",
        "<init>",
        "(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;)V",
        "getWatermarkEdit",
        "()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;",
        "textChanged",
        "",
        "getTextChanged",
        "()Z",
        "setTextChanged",
        "(Z)V",
        "beforeTextChanged",
        "",
        "s",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "afterTextChanged",
        "Landroid/text/Editable;",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private textChanged:Z

.field private final watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;)V
    .locals 1

    const-string/jumbo v0, "watermarkEdit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->access$checkSignature(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->access$setTvCountText(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_SIGNATURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->setSignText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->access$updateTextColor(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->textChanged:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->getSignatureChangedListener()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;->onSignatureChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string/jumbo p0, "s"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getTextChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->textChanged:Z

    return p0
.end method

.method public final getWatermarkEdit()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    return-object p0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string/jumbo p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->access$getSignatureTextLength(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x1e

    if-le p2, p3, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->access$checkSignature(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->watermarkEdit:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    invoke-static {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->access$getSignatureEditText$p(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;)Landroid/widget/EditText;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public final setTextChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->textChanged:Z

    return-void
.end method
