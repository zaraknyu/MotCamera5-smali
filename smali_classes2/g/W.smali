.class public final Lg/W;
.super Lg/c;
.source "SourceFile"


# instance fields
.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lg/c;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lg/W;->c:Landroid/graphics/Path;

    iput-object p2, p0, Lg/W;->d:Landroid/graphics/Paint;

    iput-object p4, p0, Lg/W;->e:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "colorCanvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/W;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lg/c;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/c;->b:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lg/W;->e:Landroid/graphics/Matrix;

    invoke-virtual {v2, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
