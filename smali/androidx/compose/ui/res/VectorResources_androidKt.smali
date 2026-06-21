.class public abstract Landroidx/compose/ui/res/VectorResources_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final capitalizeAsciiOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_1

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final isUpperCaseCharAt(ILjava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x41

    if-gt p1, p0, :cond_0

    const/16 p1, 0x5b

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;
    .locals 62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    invoke-direct {v4, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    sget-object v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    invoke-static {v1, v0, v3, v5}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string v6, "autoMirrored"

    invoke-static {v2, v6}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v6, :cond_0

    move/from16 v19, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move/from16 v19, v6

    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string/jumbo v6, "viewportWidth"

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v6, v9, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v13

    const-string/jumbo v6, "viewportHeight"

    const/16 v11, 0x8

    invoke-virtual {v4, v5, v6, v11, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v14

    cmpg-float v6, v13, v10

    if-lez v6, :cond_2b

    cmpg-float v6, v14, v10

    if-lez v6, :cond_2a

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v15

    invoke-virtual {v4, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v15, 0x2

    invoke-virtual {v5, v15, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v11

    invoke-virtual {v4, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_3

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5, v11, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v7, v7, Landroid/util/TypedValue;->type:I

    if-ne v7, v15, :cond_1

    sget-wide v20, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide/from16 v21, v20

    goto :goto_1

    :cond_1
    invoke-static {v5, v2, v0}, Landroidx/core/content/res/CamUtils;->getNamedColorStateList(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    invoke-virtual {v4, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-static {v7}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide v21

    goto :goto_1

    :cond_2
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_1

    :cond_3
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_1
    const/4 v7, 0x6

    const/4 v9, -0x1

    invoke-virtual {v5, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/16 v7, 0x9

    if-eq v10, v9, :cond_4

    if-eq v10, v6, :cond_6

    if-eq v10, v8, :cond_4

    if-eq v10, v7, :cond_5

    packed-switch v10, :pswitch_data_0

    :cond_4
    move v10, v8

    goto :goto_2

    :pswitch_0
    const/16 v10, 0xc

    goto :goto_2

    :pswitch_1
    const/16 v10, 0xe

    goto :goto_2

    :pswitch_2
    const/16 v10, 0xd

    goto :goto_2

    :cond_5
    move v10, v7

    goto :goto_2

    :cond_6
    move v10, v6

    :goto_2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v12, v7

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float v16, v16, v7

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v37, 0x0

    const/16 v38, 0x3ff

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-direct/range {v28 .. v38}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    move-object/from16 v7, v28

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v28, 0x0

    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-eq v9, v11, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v11, :cond_8

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v6, :cond_8

    :cond_7
    move/from16 v45, v10

    move/from16 v46, v12

    move v6, v13

    goto/16 :goto_1e

    :cond_8
    iget-object v9, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    move/from16 v31, v11

    const-string v11, "group"

    if-eq v8, v15, :cond_c

    if-eq v8, v6, :cond_a

    :cond_9
    move/from16 v32, v6

    move/from16 v45, v10

    move/from16 v46, v12

    move v6, v13

    move/from16 v44, v15

    const/4 v11, 0x0

    const/16 v17, 0x8

    goto/16 :goto_1d

    :cond_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v8, v28, 0x1

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    move/from16 v6, v31

    invoke-static {v6, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v6, v28

    check-cast v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v6, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    new-instance v33, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v15, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    move/from16 v35, v2

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    move/from16 v36, v2

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    move/from16 v37, v2

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    move/from16 v38, v2

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    move/from16 v39, v2

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    move/from16 v40, v2

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    move/from16 v41, v2

    iget-object v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    iget-object v11, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    move-object/from16 v42, v2

    move-object/from16 v43, v11

    move-object/from16 v34, v15

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    move-object/from16 v2, v33

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    const/4 v6, 0x3

    const/4 v15, 0x2

    const/16 v31, 0x1

    goto :goto_4

    :cond_b
    move/from16 v32, v6

    move/from16 v45, v10

    move/from16 v46, v12

    move v6, v13

    move/from16 v44, v15

    const/4 v11, 0x0

    const/16 v17, 0x8

    const/16 v28, 0x0

    goto/16 :goto_1d

    :cond_c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v8, -0x624e8b7e

    sget-object v42, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v15, ""

    move/from16 v45, v10

    iget-object v10, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->pathParser:Landroidx/room/ObservedTableVersions;

    if-eq v6, v8, :cond_24

    const v8, 0x346425

    move/from16 v46, v12

    const/high16 v12, 0x3f800000    # 1.0f

    if-eq v6, v8, :cond_10

    const v8, 0x5e0f67f

    if-eq v6, v8, :cond_d

    :goto_5
    goto/16 :goto_8

    :cond_d
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :goto_6
    goto :goto_5

    :cond_e
    sget-object v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    invoke-static {v1, v0, v3, v2}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string/jumbo v6, "rotation"

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v6, v8, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v35

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v36

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v37

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string/jumbo v6, "scaleX"

    const/4 v8, 0x3

    invoke-virtual {v4, v2, v6, v8, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v38

    const-string/jumbo v6, "scaleY"

    const/4 v8, 0x4

    invoke-virtual {v4, v2, v6, v8, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v39

    const-string/jumbo v6, "translateX"

    const/4 v8, 0x6

    invoke-virtual {v4, v2, v6, v8, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v40

    const-string/jumbo v6, "translateY"

    const/4 v8, 0x7

    invoke-virtual {v4, v2, v6, v8, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v41

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v8, :cond_f

    move-object/from16 v34, v15

    goto :goto_7

    :cond_f
    move-object/from16 v34, v8

    :goto_7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    new-instance v33, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v43, 0x200

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    move-object/from16 v2, v33

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move v6, v13

    const/4 v11, 0x0

    const/16 v17, 0x8

    const/16 v32, 0x3

    const/16 v44, 0x2

    goto/16 :goto_1d

    :cond_10
    const-string/jumbo v6, "path"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_6

    :cond_11
    sget-object v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {v1, v0, v3, v2}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string/jumbo v6, "pathData"

    const-string v8, "http://schemas.android.com/apk/res/android"

    invoke-interface {v9, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_23

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v8, :cond_12

    move-object/from16 v48, v15

    :goto_9
    const/4 v6, 0x2

    goto :goto_a

    :cond_12
    move-object/from16 v48, v8

    goto :goto_9

    :goto_a
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v8, :cond_13

    sget v6, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    :goto_b
    move-object/from16 v49, v42

    goto :goto_c

    :cond_13
    invoke-static {v10, v8}, Landroidx/room/ObservedTableVersions;->pathStringToNodes$default(Landroidx/room/ObservedTableVersions;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v42

    goto :goto_b

    :goto_c
    const-string v6, "fillColor"

    const/4 v8, 0x1

    invoke-static {v2, v9, v0, v6, v8}, Landroidx/core/content/res/CamUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v4, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string v8, "fillAlpha"

    const/16 v11, 0xc

    invoke-virtual {v4, v2, v8, v11, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v52

    const-string/jumbo v8, "strokeLineCap"

    invoke-static {v9, v8}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, -0x1

    const/16 v10, 0x8

    goto :goto_d

    :cond_14
    const/4 v8, -0x1

    const/16 v10, 0x8

    invoke-virtual {v2, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move v8, v15

    :goto_d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v15

    invoke-virtual {v4, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-eqz v8, :cond_17

    const/4 v15, 0x1

    if-eq v8, v15, :cond_16

    const/4 v15, 0x2

    if-eq v8, v15, :cond_15

    :goto_e
    const/16 v56, 0x0

    goto :goto_f

    :cond_15
    move/from16 v56, v15

    goto :goto_f

    :cond_16
    const/4 v15, 0x2

    const/16 v56, 0x1

    goto :goto_f

    :cond_17
    const/4 v15, 0x2

    goto :goto_e

    :goto_f
    const-string/jumbo v8, "strokeLineJoin"

    invoke-static {v9, v8}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18

    const/4 v8, -0x1

    const/4 v11, -0x1

    goto :goto_10

    :cond_18
    const/16 v8, 0x9

    const/4 v11, -0x1

    invoke-virtual {v2, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v8, v17

    :goto_10
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-eqz v8, :cond_1a

    const/4 v10, 0x1

    if-eq v8, v10, :cond_19

    move/from16 v57, v15

    goto :goto_11

    :cond_19
    const/16 v57, 0x1

    goto :goto_11

    :cond_1a
    const/16 v57, 0x0

    :goto_11
    const-string/jumbo v8, "strokeMiterLimit"

    const/16 v10, 0xa

    invoke-virtual {v4, v2, v8, v10, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v58

    const-string/jumbo v8, "strokeColor"

    const/4 v10, 0x3

    invoke-static {v2, v9, v0, v8, v10}, Landroidx/core/content/res/CamUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lcom/google/common/base/Splitter;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string/jumbo v10, "strokeAlpha"

    const/16 v11, 0xb

    invoke-virtual {v4, v2, v10, v11, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v54

    const-string/jumbo v10, "strokeWidth"

    const/4 v11, 0x4

    invoke-virtual {v4, v2, v10, v11, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v55

    const-string/jumbo v10, "trimPathEnd"

    const/4 v11, 0x6

    invoke-virtual {v4, v2, v10, v11, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v60

    const-string/jumbo v10, "trimPathOffset"

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-virtual {v4, v2, v10, v12, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v61

    const-string/jumbo v10, "trimPathStart"

    const/4 v12, 0x5

    invoke-virtual {v4, v2, v10, v12, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v59

    const-string v10, "fillType"

    invoke-static {v9, v10}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b

    const/16 v9, 0xd

    const/16 v23, 0x0

    goto :goto_12

    :cond_1b
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    :goto_12
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v6, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Shader;

    if-eqz v2, :cond_1c

    goto :goto_13

    :cond_1c
    iget v9, v6, Lcom/google/common/base/Splitter;->limit:I

    if-eqz v9, :cond_1e

    :goto_13
    if-eqz v2, :cond_1d

    new-instance v6, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v6, v2}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v51, v6

    goto :goto_14

    :cond_1d
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    iget v6, v6, Lcom/google/common/base/Splitter;->limit:I

    invoke-static {v6}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    move-object/from16 v51, v2

    goto :goto_14

    :cond_1e
    const/16 v51, 0x0

    :goto_14
    iget-object v2, v8, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Shader;

    if-eqz v2, :cond_1f

    goto :goto_15

    :cond_1f
    iget v6, v8, Lcom/google/common/base/Splitter;->limit:I

    if-eqz v6, :cond_21

    :goto_15
    if-eqz v2, :cond_20

    new-instance v10, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v10, v2}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v53, v10

    move v6, v13

    goto :goto_16

    :cond_20
    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    iget v2, v8, Lcom/google/common/base/Splitter;->limit:I

    move v6, v13

    invoke-static {v2}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    move-object/from16 v53, v10

    goto :goto_16

    :cond_21
    move v6, v13

    const/16 v53, 0x0

    :goto_16
    if-nez v23, :cond_22

    const/16 v50, 0x0

    :goto_17
    const/4 v10, 0x1

    goto :goto_18

    :cond_22
    const/16 v50, 0x1

    goto :goto_17

    :goto_18
    invoke-static {v10, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v2, v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    new-instance v47, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-direct/range {v47 .. v61}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V

    move-object/from16 v10, v47

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v44, v15

    const/4 v11, 0x0

    const/16 v17, 0x8

    const/16 v32, 0x3

    goto/16 :goto_1d

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No path data available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move/from16 v46, v12

    move v6, v13

    const/16 v17, 0x8

    const/16 v32, 0x3

    const/16 v44, 0x2

    const-string v11, "clip-path"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v11, 0x0

    goto :goto_1d

    :cond_25
    sget-object v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    invoke-static {v1, v0, v3, v2}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v11

    invoke-virtual {v4, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v12, :cond_26

    move-object/from16 v48, v15

    :goto_19
    const/4 v15, 0x1

    goto :goto_1a

    :cond_26
    move-object/from16 v48, v12

    goto :goto_19

    :goto_1a
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v12, :cond_27

    sget v10, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    :goto_1b
    move-object/from16 v56, v42

    goto :goto_1c

    :cond_27
    invoke-static {v10, v12}, Landroidx/room/ObservedTableVersions;->pathStringToNodes$default(Landroidx/room/ObservedTableVersions;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v42

    goto :goto_1b

    :goto_1c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v47, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v57, 0x200

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/high16 v52, 0x3f800000    # 1.0f

    const/high16 v53, 0x3f800000    # 1.0f

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-direct/range {v47 .. v57}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    move-object/from16 v2, v47

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_1d

    :cond_28
    move/from16 v45, v10

    move/from16 v46, v12

    goto/16 :goto_8

    :goto_1d
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v2, p2

    move v13, v6

    move/from16 v6, v32

    move/from16 v15, v44

    move/from16 v10, v45

    move/from16 v12, v46

    const/4 v8, 0x5

    const/4 v11, 0x1

    goto/16 :goto_3

    :goto_1e
    new-instance v0, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    :goto_1f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    if-le v1, v15, :cond_29

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    invoke-static {v15, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v2, v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    new-instance v23, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v3, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    iget v8, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    iget v9, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    iget v10, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    iget v11, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    iget v12, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    iget v13, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    iget-object v15, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    iget-object v1, v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    move-object/from16 v33, v1

    move-object/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v32, v15

    invoke-direct/range {v23 .. v33}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    move-object/from16 v1, v23

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_29
    new-instance v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    new-instance v15, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v1, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    iget-object v2, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    iget-object v3, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    iget v4, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    iget v5, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    iget v8, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    iget v10, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    iget v11, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    iget v12, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    iget v7, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    move-object/from16 v32, v1

    move-object/from16 v33, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v31, v7

    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move-object/from16 v23, v15

    invoke-direct/range {v23 .. v33}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    const-string v10, ""

    move v13, v6

    move/from16 v12, v16

    move-wide/from16 v16, v21

    move/from16 v18, v45

    move/from16 v11, v46

    invoke-direct/range {v9 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZ)V

    move/from16 v1, p3

    invoke-direct {v0, v9, v1}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    return-object v0

    :cond_2a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final toLowerCaseAsciiOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5b

    if-ge v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final vectorResource(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 6

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/ComposerImpl;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v2, :cond_2

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    :goto_0
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    if-eq v4, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :cond_1
    if-ne v4, v5, :cond_3

    iget v2, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v0, v1, p0, v2}, Landroidx/compose/ui/res/VectorResources_androidKt;->loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    move-result-object p0

    iget-object v3, p0, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v3

    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
