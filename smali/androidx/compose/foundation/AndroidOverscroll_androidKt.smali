.class public abstract Landroidx/compose/foundation/AndroidOverscroll_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide v0, 0xff666666L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    const/4 v0, 0x0

    int-to-float v1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    cmpl-float v5, v1, v2

    if-ltz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    and-int/2addr v3, v5

    cmpl-float v5, v1, v2

    if-ltz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    and-int/2addr v3, v5

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    move v0, v4

    :cond_3
    and-int/2addr v0, v3

    if-nez v0, :cond_4

    const-string v0, "Padding must be non-negative"

    invoke-static {v0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
