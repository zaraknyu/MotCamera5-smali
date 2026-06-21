.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$Companion;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0003*+,B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u001a\u001a\u00020\u001bH\u0014J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u00020\u001bH\u0014J\u0012\u0010\u001e\u001a\u00020\u001b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0012\u0010!\u001a\u00020 2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0010\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0002J\u0012\u0010$\u001a\u00020\u00072\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u000e\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'J\u0006\u0010(\u001a\u00020\u001bJ\u0010\u0010)\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 H\u0002R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "signatureChangedListener",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;",
        "getSignatureChangedListener",
        "()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;",
        "setSignatureChangedListener",
        "(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;)V",
        "signatureTextView",
        "Landroid/widget/TextView;",
        "countTextView",
        "signatureEditText",
        "Landroid/widget/EditText;",
        "signatureTextWatcher",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;",
        "originalSoftInputMode",
        "Ljava/lang/Integer;",
        "onAttachedToWindow",
        "",
        "initViews",
        "onDetachedFromWindow",
        "setTvCountText",
        "signatureText",
        "",
        "checkSignature",
        "getCharLength",
        "codePoint",
        "getSignatureTextLength",
        "setEnable",
        "isChecked",
        "",
        "updateSignatureText",
        "updateTextColor",
        "OnSignatureChangedListener",
        "SignatureTextWatcher",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$Companion;

.field private static final SIGNATURE_MAX_CHARS:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private countTextView:Landroid/widget/TextView;

.field private originalSoftInputMode:Ljava/lang/Integer;

.field private signatureChangedListener:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;

.field private signatureEditText:Landroid/widget/EditText;

.field private signatureTextView:Landroid/widget/TextView;

.field private signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;


# direct methods
.method public static synthetic $r8$lambda$lrlPVijGMaz0DPJARXesUCnXNe0(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->initViews$lambda$2$lambda$1(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->$stable:I

    const-string v0, "WatermarkEdit"

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d0111

    .line 6
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$checkSignature(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->checkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSignatureEditText$p(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getSignatureTextLength(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->getSignatureTextLength(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setTvCountText(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setTvCountText(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateTextColor(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->updateTextColor(Ljava/lang/String;)V

    return-void
.end method

.method private final checkSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->TAG:Ljava/lang/String;

    const-string v6, "Invalid code point: "

    invoke-static {v6, v4, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->getCharLength(I)I

    move-result v5

    rsub-int/lit8 v6, v3, 0x1e

    if-le v5, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "substring(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v3, v5

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private final getCharLength(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isIdeographic(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    return p0
.end method

.method private final getSignatureTextLength(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->TAG:Ljava/lang/String;

    const-string v4, "Invalid code point: "

    invoke-static {v4, v2, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->getCharLength(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private final initViews()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_SIGNATURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->checkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->setSignText(Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;

    const v1, 0x7f0a03f8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->countTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setTvCountText(Ljava/lang/String;)V

    const v1, 0x7f0a03f9

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->updateTextColor(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    const v0, 0x7f0a03fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureTextView:Landroid/widget/TextView;

    return-void
.end method

.method private static final initViews$lambda$2$lambda$1(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->getTextChanged()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;->setTextChanged(Z)V

    :cond_0
    return-void
.end method

.method private final setTvCountText(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12068b

    goto :goto_0

    :cond_0
    const v0, 0x7f12068a

    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->countTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->getSignatureTextLength(Ljava/lang/String;)I

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 p1, 0x1e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final updateTextColor(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const p1, 0x7f06044e

    goto :goto_0

    :cond_0
    const p1, 0x7f06044d

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getSignatureChangedListener()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureChangedListener:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->originalSoftInputMode:Ljava/lang/Integer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->initViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->originalSoftInputMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$SignatureTextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public final setEnable(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->countTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    return-void
.end method

.method public final setSignatureChangedListener(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->signatureChangedListener:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;

    return-void
.end method

.method public final updateSignatureText()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_SIGNATURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->checkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->setSignText(Ljava/lang/String;)V

    return-void
.end method
