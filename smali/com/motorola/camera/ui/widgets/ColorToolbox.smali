.class public final Lcom/motorola/camera/ui/widgets/ColorToolbox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buttonActiveColor:I

.field public final buttonBackground:I

.field public final buttonBackgroundSelected:I

.field public final buttonTextSelected:I

.field public final buttonTextUnSelected:I

.field public final carouselBg:I

.field public final modeSelectedColor:I

.field public final navBarBackground:I

.field public final onPrimary:I

.field public final primaryLight:I

.field public final primaryMain:I

.field public final primaryShadow:I

.field public final sliderShadow:I

.field public final surfaceDark:I

.field public final surfaceLight:I

.field public final surfaceMain:I

.field public final surfaceMedium:I

.field public final toastBg:I

.field public final toggleDarkBg:I

.field public final toggleLightBg:I

.field public final toggleUnselectedColor:I

.field public final togglesBg:I

.field public final tooltipBackground:I

.field public final windowBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f060405

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    const v0, 0x7f060401

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    const v1, 0x7f060404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryLight:I

    const v1, 0x7f06040a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    const v1, 0x7f0603e2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    const v1, 0x7f06047d

    invoke-static {p1, v1}, Lcom/motorola/camera/utility/ColorUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->tooltipBackground:I

    const v1, 0x7f06004c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonActiveColor:I

    const v1, 0x7f060459

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    const v1, 0x7f060453

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    const v1, 0x7f060457

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceLight:I

    const v1, 0x7f0603f8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    const v1, 0x7f06044f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    const v1, 0x7f0604b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->windowBackground:I

    const v1, 0x7f04011b

    const/high16 v2, -0x1000000

    invoke-static {p1, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonBackground:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonBackgroundSelected:I

    const v1, 0x7f06040b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonTextSelected:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonTextUnSelected:I

    const v1, 0x7f060473

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toastBg:I

    const v1, 0x7f060057

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->carouselBg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->modeSelectedColor:I

    const v0, 0x7f06047c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->togglesBg:I

    const v0, 0x7f060479

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleDarkBg:I

    const v0, 0x7f06047a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleLightBg:I

    const v0, 0x7f06047b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleUnselectedColor:I

    return-void
.end method
