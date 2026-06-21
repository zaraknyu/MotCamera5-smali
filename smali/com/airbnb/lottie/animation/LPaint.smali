.class public final Lcom/airbnb/lottie/animation/LPaint;
.super Landroid/graphics/Paint;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/animation/LPaint;->$r8$classId:I

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/airbnb/lottie/animation/LPaint;->$r8$classId:I

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/animation/LPaint;->$r8$classId:I

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 4
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private final setTextLocales$com$airbnb$lottie$animation$LPaint(Landroid/os/LocaleList;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/animation/LPaint;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(I)I

    move-result p1

    invoke-super {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/animation/LPaint;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
