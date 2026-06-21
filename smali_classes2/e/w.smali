.class public final Le/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Le/w;->$r8$classId:I

    iput-object p1, p0, Le/w;->a:Ljava/lang/Object;

    iput-object p2, p0, Le/w;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/w;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    move-object/from16 v0, p0

    iget v1, v0, Le/w;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Le/w;->a:Ljava/lang/Object;

    check-cast v1, Lh/p;

    iget-object v2, v1, Lh/p;->a:Le/J0;

    iget-object v3, v1, Lh/p;->i:Le/H0;

    iget-object v1, v0, Le/w;->b:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Le/A0;

    iget-object v0, v0, Le/w;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lf/C;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v14}, Le/W;->a(Le/J0;Le/H0;Le/A0;Lf/C;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_3
    :goto_2
    iget-object v1, v0, Le/w;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/material/Colors;

    iget-object v2, v0, Le/w;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/font/SystemFontFamily;

    const-string v3, "fontFamily"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/compose/ui/text/PlatformTextStyle;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/compose/ui/text/PlatformTextStyle;-><init>(Z)V

    sget-object v6, Landroidx/compose/material/TypographyKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Light:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v4, 0x60

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    const/16 v4, 0x70

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide/high16 v10, -0x4008000000000000L    # -1.5

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    const/16 v16, 0x0

    const v17, 0xfdff79

    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    const/16 v7, 0x3c

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    const/16 v10, 0x48

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    const/4 v10, 0x0

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v8, 0x30

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    const/16 v8, 0x38

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    move-wide/from16 v42, v10

    move-object v10, v7

    move-wide/from16 v7, v42

    move-wide v11, v15

    const/16 v16, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 p1, v1

    move-object/from16 v1, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/16 v8, 0x22

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    const/16 v8, 0x24

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    move-wide/from16 v42, v10

    move-object v10, v7

    move-wide/from16 v7, v42

    move-wide v11, v15

    const/16 v16, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 p2, v3

    move-object/from16 v3, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/16 v8, 0x18

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    move-wide/from16 v42, v10

    move-object v10, v7

    move-wide/from16 v7, v42

    move-wide v11, v15

    const/16 v16, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    move-object/from16 v18, v9

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v8, 0x14

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    const/16 v8, 0x18

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide v15, 0x3fc3333333333333L    # 0.15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    move-wide/from16 v42, v10

    move-object v10, v7

    move-wide/from16 v7, v42

    move-wide v11, v15

    const/16 v16, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v0, v19

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    move-object/from16 v19, v9

    const/16 v8, 0x10

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide v10, 0x3fc3333333333333L    # 0.15

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    const/4 v10, 0x0

    move-object/from16 v21, v7

    move-wide v7, v8

    move-object/from16 v9, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/16 v8, 0xe

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    const/4 v10, 0x0

    move-object/from16 v22, v7

    move-wide v7, v8

    move-object/from16 v9, v19

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    const/4 v10, 0x0

    move-object/from16 v23, v7

    move-wide v7, v8

    move-object/from16 v9, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/16 v8, 0xe

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    const/16 v8, 0x14

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    move-wide/from16 v42, v10

    move-object v10, v7

    move-wide/from16 v7, v42

    move-wide v11, v15

    const/16 v16, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v24, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    move-object/from16 v18, v9

    const/16 v8, 0xe

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v8

    const/16 v10, 0x10

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    const/4 v10, 0x0

    move-object/from16 v25, v7

    move-wide v7, v8

    move-object/from16 v9, v19

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/16 v8, 0xc

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v8

    const/16 v10, 0x10

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide v10, 0x3fd999999999999aL    # 0.4

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    const/4 v10, 0x0

    move-object/from16 v26, v7

    move-wide v7, v8

    move-object/from16 v9, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    const/16 v8, 0x10

    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    move-wide/from16 v42, v10

    move-object v10, v7

    move-wide/from16 v7, v42

    move-wide v11, v15

    const/16 v16, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v27, v18

    invoke-static/range {v6 .. v17}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v6

    invoke-static {v4, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    invoke-static {v1, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    invoke-static {v3, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    invoke-static {v5, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    invoke-static {v0, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move-object/from16 v7, v21

    invoke-static {v7, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    move-object/from16 v7, v22

    invoke-static {v7, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v22

    move-object/from16 v7, v23

    invoke-static {v7, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v23

    move-object/from16 v15, v24

    invoke-static {v15, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v24

    move-object/from16 v7, v25

    invoke-static {v7, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    move-object/from16 v7, v26

    invoke-static {v7, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v26

    move-object/from16 v15, v27

    invoke-static {v15, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v27

    invoke-static {v6, v2}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    const-wide/16 v16, 0x0

    const v19, 0xbfffff

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v18, p2

    move-object v6, v4

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v29

    move-object v6, v1

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v30

    move-object v6, v3

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v31

    move-object v6, v5

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v32

    move-object v6, v0

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v33

    move-object/from16 v6, v21

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v34

    move-object/from16 v6, v22

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v35

    move-object/from16 v6, v23

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v36

    sget-wide v16, Le/x;->a:J

    const v19, 0xbdffff

    move-object/from16 v6, v24

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v37

    move-object/from16 v6, v25

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v38

    move-object/from16 v6, v26

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v39

    const-wide/16 v16, 0x0

    const v19, 0xbfffff

    move-object/from16 v6, v27

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v40

    move-object v6, v2

    invoke-static/range {v6 .. v19}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v41

    new-instance v2, Landroidx/compose/material/Typography;

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v41}, Landroidx/compose/material/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    new-instance v0, Le/S;

    move-object/from16 v1, p0

    iget-object v1, v1, Le/w;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Le/S;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v1, -0x4d86fc7b

    move-object/from16 v5, v20

    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v6, 0xc00

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, La/l;->MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
