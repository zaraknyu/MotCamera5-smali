.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    iput-boolean p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$4:Z

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 8

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v5, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {v5}, Landroid/renderscript/BaseObj;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/16 v5, 0x6e

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v0, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$4:Z

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda2;->f$5:Z

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->updateMooLayout(ZZ)V

    return-void
.end method
