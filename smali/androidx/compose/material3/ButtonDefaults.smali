.class public abstract Landroidx/compose/material3/ButtonDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final MinHeight:F

.field public static final MinWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x18

    int-to-float v0, v0

    const/16 v1, 0x8

    int-to-float v1, v1

    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v2, v0, v1, v0, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v2, 0x10

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    cmpl-float v7, v1, v3

    if-ltz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    and-int/2addr v4, v7

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    and-int/2addr v0, v4

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    and-int/2addr v0, v4

    const-string v4, "Padding must be non-negative"

    if-nez v0, :cond_4

    invoke-static {v4}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0xc

    int-to-float v0, v0

    cmpl-float v7, v0, v3

    if-ltz v7, :cond_5

    move v7, v6

    goto :goto_4

    :cond_5
    move v7, v5

    :goto_4
    cmpl-float v8, v1, v3

    if-ltz v8, :cond_6

    move v8, v6

    goto :goto_5

    :cond_6
    move v8, v5

    :goto_5
    and-int/2addr v7, v8

    cmpl-float v8, v0, v3

    if-ltz v8, :cond_7

    move v8, v6

    goto :goto_6

    :cond_7
    move v8, v5

    :goto_6
    and-int/2addr v7, v8

    cmpl-float v8, v1, v3

    if-ltz v8, :cond_8

    move v8, v6

    goto :goto_7

    :cond_8
    move v8, v5

    :goto_7
    and-int/2addr v7, v8

    if-nez v7, :cond_9

    invoke-static {v4}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_9
    cmpl-float v0, v0, v3

    if-ltz v0, :cond_a

    move v0, v6

    goto :goto_8

    :cond_a
    move v0, v5

    :goto_8
    cmpl-float v7, v1, v3

    if-ltz v7, :cond_b

    move v7, v6

    goto :goto_9

    :cond_b
    move v7, v5

    :goto_9
    and-int/2addr v0, v7

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    move v2, v6

    goto :goto_a

    :cond_c
    move v2, v5

    :goto_a
    and-int/2addr v0, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_d

    move v5, v6

    :cond_d
    and-int/2addr v0, v5

    if-nez v0, :cond_e

    invoke-static {v4}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_e
    const/16 v0, 0x3a

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    const/16 v0, 0x28

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    sget v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    return-void
.end method

.method public static buttonColors-ro_MJ88(JLandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/material3/ButtonColors;
    .locals 13

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/material3/ColorScheme;

    invoke-static {p2}, Landroidx/compose/material3/ButtonDefaults;->getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object p2

    const-wide/16 v2, 0x10

    cmp-long v4, p0, v2

    if-eqz v4, :cond_0

    :goto_0
    move-wide v5, p0

    goto :goto_1

    :cond_0
    iget-wide p0, p2, Landroidx/compose/material3/ButtonColors;->containerColor:J

    goto :goto_0

    :goto_1
    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    move-wide v7, v0

    goto :goto_2

    :cond_1
    iget-wide p0, p2, Landroidx/compose/material3/ButtonColors;->contentColor:J

    move-wide v7, p0

    :goto_2
    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    move-wide v9, v0

    goto :goto_3

    :cond_2
    iget-wide p0, p2, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    move-wide v9, p0

    :goto_3
    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    :goto_4
    move-wide v11, v0

    goto :goto_5

    :cond_3
    iget-wide v0, p2, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    goto :goto_4

    :goto_5
    new-instance v4, Landroidx/compose/material3/ButtonColors;

    invoke-direct/range {v4 .. v12}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    return-object v4
.end method

.method public static getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/material3/ButtonColors;

    sget v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    const/16 v0, 0x1a

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;I)J

    move-result-wide v2

    sget v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->LabelTextColor:I

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;I)J

    move-result-wide v4

    sget v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerColor:I

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;I)J

    move-result-wide v6

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {v0, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    sget v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledLabelTextColor:I

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;I)J

    move-result-wide v8

    const v0, 0x3ec28f5c    # 0.38f

    invoke-static {v0, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    iput-object v1, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object v1

    :cond_0
    return-object v0
.end method
