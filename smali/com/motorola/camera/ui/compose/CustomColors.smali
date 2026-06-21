.class public final Lcom/motorola/camera/ui/compose/CustomColors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final background:J

.field public final blackOpacity20:J

.field public final blackOpacity70:J

.field public final blackOpacity85:J

.field public final bottomBarButtonColor:J

.field public final bottomBarButtonColorDisabled:J

.field public final controlPanelButtonColor:J

.field public final controlPanelFullScreenBackgroundColor:J

.field public final coreBrandVellum100:J

.field public final coreBrandVellum20:J

.field public final coreBrandVellum80:J

.field public final dialogBackgroundColor:J

.field public final dialogButtonColor:J

.field public final dialogCloseButton:J

.field public final dialogTextColor:J

.field public final dialogTitleColor:J

.field public final disableButtonAlpha:F

.field public final dropShadowColor:J

.field public final onBackground:J

.field public final storageFullBackgroundColor:J

.field public final storageFullTextColor:J

.field public final toggleButtonBackgroundColor:J

.field public final toolbarButtonColor:J


# direct methods
.method public constructor <init>(JJJJJJJJJI)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->White:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    const-wide v6, 0xffffffffL

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v6

    const-wide v8, 0xffcac6c2L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v8

    const-wide v10, 0xff2c3038L

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v10

    const-wide v12, 0xfff3f4f6L

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v12

    const/high16 v14, 0x4d000000    # 1.3421773E8f

    invoke-static {v14}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide v14

    move-wide/from16 p1, v14

    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_2

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->White:J

    move-wide/from16 p3, v14

    goto :goto_2

    :cond_2
    move-wide/from16 p3, p5

    :goto_2
    const v14, 0x3ec28f5c    # 0.38f

    move-wide v15, v10

    invoke-static {v14, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v10

    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_3

    sget-wide v17, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide/from16 v27, v17

    move-wide/from16 v17, v15

    move-wide/from16 v14, v27

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v15

    move-wide/from16 v14, p7

    :goto_3
    move-wide/from16 p6, v14

    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_4

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_4

    :cond_4
    move-wide/from16 v14, p9

    :goto_4
    move-wide/from16 p8, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_5

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p11

    :goto_5
    move-wide/from16 p10, v14

    and-int/lit16 v14, v1, 0x4000

    if-eqz v14, :cond_6

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_7

    sget-wide v19, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide/from16 v21, v19

    goto :goto_7

    :cond_7
    move-wide/from16 v21, p15

    :goto_7
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_8

    sget-wide v19, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide/from16 v23, v19

    goto :goto_8

    :cond_8
    move-wide/from16 v23, p17

    :goto_8
    const-wide v19, 0xff262a32L

    move-wide/from16 p12, v14

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v14

    const-wide v19, 0x99333333L

    move-wide/from16 p14, v14

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v14

    move-wide/from16 p16, v14

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Black:J

    const v1, 0x3f59999a    # 0.85f

    move-wide/from16 v19, v10

    invoke-static {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v10

    const v1, 0x3f333333    # 0.7f

    move-wide/from16 p18, v10

    invoke-static {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v10

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v14

    const v1, 0x6630343b

    move-wide/from16 v25, v14

    invoke-static {v1}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide v14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v1, 0x3ec28f5c    # 0.38f

    iput v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->disableButtonAlpha:F

    iput-wide v2, v0, Lcom/motorola/camera/ui/compose/CustomColors;->background:J

    iput-wide v4, v0, Lcom/motorola/camera/ui/compose/CustomColors;->onBackground:J

    iput-wide v6, v0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum100:J

    iput-wide v8, v0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum80:J

    move-wide/from16 v1, v17

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum20:J

    iput-wide v12, v0, Lcom/motorola/camera/ui/compose/CustomColors;->toolbarButtonColor:J

    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dropShadowColor:J

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogCloseButton:J

    iput-wide v12, v0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColor:J

    move-wide/from16 v1, v19

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColorDisabled:J

    move-wide/from16 v1, p6

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogBackgroundColor:J

    move-wide/from16 v1, p8

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTitleColor:J

    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    move-wide/from16 v1, p12

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogButtonColor:J

    move-wide/from16 v1, v21

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullBackgroundColor:J

    move-wide/from16 v1, v23

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullTextColor:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelFullScreenBackgroundColor:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity85:J

    iput-wide v10, v0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity70:J

    move-wide/from16 v1, v25

    iput-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity20:J

    iput-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->toggleButtonBackgroundColor:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/compose/CustomColors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/compose/CustomColors;

    iget v1, p0, Lcom/motorola/camera/ui/compose/CustomColors;->disableButtonAlpha:F

    iget v3, p1, Lcom/motorola/camera/ui/compose/CustomColors;->disableButtonAlpha:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->background:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->background:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->onBackground:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->onBackground:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum100:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum100:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum80:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum80:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum20:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum20:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->toolbarButtonColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->toolbarButtonColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dropShadowColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->dropShadowColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogCloseButton:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->dialogCloseButton:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColorDisabled:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColorDisabled:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogBackgroundColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->dialogBackgroundColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTitleColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTitleColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogButtonColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->dialogButtonColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullBackgroundColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullBackgroundColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullTextColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelFullScreenBackgroundColor:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelFullScreenBackgroundColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity85:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity85:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity70:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity70:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity20:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity20:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/motorola/camera/ui/compose/CustomColors;->toggleButtonBackgroundColor:J

    iget-wide p0, p1, Lcom/motorola/camera/ui/compose/CustomColors;->toggleButtonBackgroundColor:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/compose/CustomColors;->disableButtonAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->background:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->onBackground:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum100:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum80:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum20:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->toolbarButtonColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dropShadowColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogCloseButton:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColorDisabled:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogBackgroundColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTitleColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogButtonColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullBackgroundColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullTextColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelFullScreenBackgroundColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity85:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity70:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity20:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/ui/compose/CustomColors;->toggleButtonBackgroundColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/motorola/camera/ui/compose/CustomColors;->background:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/motorola/camera/ui/compose/CustomColors;->onBackground:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum100:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum80:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum20:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lcom/motorola/camera/ui/compose/CustomColors;->toolbarButtonColor:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dropShadowColor:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogCloseButton:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColor:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColorDisabled:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogBackgroundColor:J

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTitleColor:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogButtonColor:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullBackgroundColor:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->storageFullTextColor:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelButtonColor:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->controlPanelFullScreenBackgroundColor:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity85:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity70:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->blackOpacity20:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v14

    iget-wide v14, v0, Lcom/motorola/camera/ui/compose/CustomColors;->toggleButtonBackgroundColor:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v24, v14

    const-string v14, "CustomColors(disableButtonAlpha="

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/motorola/camera/ui/compose/CustomColors;->disableButtonAlpha:F

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", background="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", onBackground="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", coreBrandVellum100="

    const-string v1, ", coreBrandVellum80="

    invoke-static {v15, v2, v0, v3, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", coreBrandVellum20="

    const-string v1, ", toolbarButtonColor="

    invoke-static {v15, v4, v0, v5, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", dropShadowColor="

    const-string v1, ", dialogCloseButton="

    invoke-static {v15, v6, v0, v7, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", bottomBarButtonColor="

    const-string v1, ", bottomBarButtonColorDisabled="

    invoke-static {v15, v8, v0, v9, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", dialogBackgroundColor="

    const-string v1, ", dialogTitleColor="

    invoke-static {v15, v10, v0, v11, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", dialogTextColor="

    const-string v1, ", dialogButtonColor="

    invoke-static {v15, v12, v0, v13, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", storageFullBackgroundColor="

    const-string v1, ", storageFullTextColor="

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v15, v2, v0, v3, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", controlPanelButtonColor="

    const-string v1, ", controlPanelFullScreenBackgroundColor="

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v15, v2, v0, v3, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", blackOpacity85="

    const-string v1, ", blackOpacity70="

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v15, v2, v0, v3, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", blackOpacity20="

    const-string v1, ", toggleButtonBackgroundColor="

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v15, v2, v0, v3, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    move-object/from16 v1, v24

    invoke-static {v15, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
