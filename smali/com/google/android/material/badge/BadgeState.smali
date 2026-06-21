.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final badgeHeight:F

.field public final badgeRadius:F

.field public final badgeWidth:F

.field public final badgeWithTextHeight:F

.field public final badgeWithTextRadius:F

.field public final badgeWithTextWidth:F

.field public final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field public final horizontalInset:I

.field public final horizontalInsetWithText:I

.field public final offsetAlignmentMode:I

.field public final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v1}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    new-instance v7, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v7}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    iget v1, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    const-string v2, "badge"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v8, :cond_1

    if-ne v4, v9, :cond_0

    :cond_1
    if-ne v4, v8, :cond_3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    move/from16 v17, v2

    move-object v2, v1

    move/from16 v1, v17

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have a <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> start tag"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load badge resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_4
    const/4 v1, 0x0

    move-object v2, v1

    move v1, v10

    :goto_1
    if-nez v1, :cond_5

    const v1, 0x7f1304f2

    :cond_5
    move v5, v1

    sget-object v3, Lcom/google/android/material/R$styleable;->Badge:[I

    new-array v6, v10, [I

    const v4, 0x7f040066

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ViewUtils;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f0703a1

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f0703a4

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    const/16 v6, 0xe

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    int-to-float v11, v11

    iput v11, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    const v11, 0x7f0701ec

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    const/16 v13, 0xc

    invoke-virtual {v2, v13, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    const/16 v12, 0x11

    const v14, 0x7f0701f0

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v2, v12, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v2, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, v0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    const/16 v11, 0xd

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-virtual {v2, v11, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    const/16 v11, 0x18

    invoke-virtual {v2, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    iget-object v11, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v14, v7, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    const/4 v15, -0x2

    if-ne v14, v15, :cond_6

    const/16 v14, 0xff

    :cond_6
    iput v14, v11, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    iget v14, v7, Lcom/google/android/material/badge/BadgeState$State;->number:I

    if-eq v14, v15, :cond_7

    iput v14, v11, Lcom/google/android/material/badge/BadgeState$State;->number:I

    goto :goto_2

    :cond_7
    const/16 v11, 0x17

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v5, Lcom/google/android/material/badge/BadgeState$State;->number:I

    goto :goto_2

    :cond_8
    iget-object v11, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iput v5, v11, Lcom/google/android/material/badge/BadgeState$State;->number:I

    :goto_2
    iget-object v5, v7, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    const/4 v11, 0x7

    if-eqz v5, :cond_9

    iget-object v14, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iput-object v5, v14, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    :cond_a
    :goto_3
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    if-nez v14, :cond_b

    const v14, 0x7f1202ef

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_b
    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v14, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    if-nez v14, :cond_c

    const v14, 0x7f100002

    :cond_c
    iput v14, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    iget v14, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    if-nez v14, :cond_d

    const v14, 0x7f1202fc

    :cond_d
    iput v14, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_4

    :cond_e
    move v14, v10

    goto :goto_5

    :cond_f
    :goto_4
    move v14, v9

    :goto_5
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v14, v7, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    if-ne v14, v15, :cond_10

    const/16 v14, 0x15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    :cond_10
    iput v14, v5, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v14, v7, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    if-ne v14, v15, :cond_11

    const/16 v14, 0x16

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    :cond_11
    iput v14, v5, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    const v15, 0x7f130225

    const/4 v11, 0x5

    if-nez v14, :cond_12

    invoke-virtual {v2, v11, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_6

    :cond_12
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    const/4 v6, 0x6

    if-nez v14, :cond_13

    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_7

    :cond_13
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    if-nez v14, :cond_14

    const/16 v14, 0xf

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_8

    :cond_14
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    if-nez v14, :cond_15

    const/16 v14, 0x10

    invoke-virtual {v2, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_9

    :cond_15
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    if-nez v14, :cond_16

    invoke-static {v1, v2, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    goto :goto_a

    :cond_16
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    const/16 v15, 0x8

    if-nez v14, :cond_17

    const v14, 0x7f1302bc

    invoke-virtual {v2, v15, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_b

    :cond_17
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    iget-object v5, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    if-eqz v5, :cond_18

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iput-object v5, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    goto/16 :goto_d

    :cond_18
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_19

    iget-object v4, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v1, v2, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    goto :goto_d

    :cond_19
    iget-object v14, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v14, v14, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v5, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v14, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    invoke-static {v1, v5, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-static {v1, v5, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    invoke-static {v1, v5, v11}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v5, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_c

    :cond_1a
    const/16 v13, 0xa

    :goto_c
    invoke-virtual {v5, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const/16 v4, 0xe

    invoke-virtual {v5, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    invoke-static {v1, v5, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v4, 0x7

    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v4, 0x8

    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v4, 0x9

    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {v1, v14, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-virtual {v12}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    :goto_d
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    if-nez v4, :cond_1b

    const v4, 0x800035

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_e

    :cond_1b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    if-nez v4, :cond_1c

    const v4, 0x7f0703a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0xb

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_f

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    if-nez v4, :cond_1d

    const v4, 0x7f0701f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_10

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    if-nez v3, :cond_1e

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_11

    :cond_1e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    if-nez v3, :cond_1f

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_12

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    if-nez v3, :cond_20

    iget-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_13

    :cond_20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    if-nez v3, :cond_21

    iget-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1a

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_14

    :cond_21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    if-nez v3, :cond_22

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_15

    :cond_22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    if-nez v3, :cond_23

    move v3, v10

    goto :goto_16

    :cond_23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    if-nez v3, :cond_24

    move v3, v10

    goto :goto_17

    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    if-nez v3, :cond_25

    invoke-virtual {v2, v10, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_18

    :cond_25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v7, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    if-nez v1, :cond_26

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    goto :goto_19

    :cond_26
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iput-object v1, v2, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    :goto_19
    iput-object v7, v0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    return-void
.end method
