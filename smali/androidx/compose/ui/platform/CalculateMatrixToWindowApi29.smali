.class public final Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final tmpMatrix:Landroid/graphics/Matrix;

.field public final tmpPosition:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    return-void
.end method


# virtual methods
.method public calculateMatrixToWindow-EL8BTi8(Landroid/view/View;[F)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1, v0}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object p1, v1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p0, v1

    aget p0, p0, v3

    sub-int/2addr p1, v2

    int-to-float p1, p1

    sub-int/2addr p0, v4

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/Brush;->setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V

    return-void
.end method
