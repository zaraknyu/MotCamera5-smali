.class public final Landroidx/compose/material/ColorsKt$LocalColors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/material/ColorsKt$LocalColors$1;

.field public static final INSTANCE$1:Landroidx/compose/material/ColorsKt$LocalColors$1;

.field public static final INSTANCE$2:Landroidx/compose/material/ColorsKt$LocalColors$1;

.field public static final INSTANCE$3:Landroidx/compose/material/ColorsKt$LocalColors$1;

.field public static final INSTANCE$4:Landroidx/compose/material/ColorsKt$LocalColors$1;

.field public static final INSTANCE$5:Landroidx/compose/material/ColorsKt$LocalColors$1;

.field public static final INSTANCE$6:Landroidx/compose/material/ColorsKt$LocalColors$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material/ColorsKt$LocalColors$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ColorsKt$LocalColors$1;-><init>(II)V

    sput-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v0, Landroidx/compose/material/ColorsKt$LocalColors$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ColorsKt$LocalColors$1;-><init>(II)V

    sput-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$1:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v0, Landroidx/compose/material/ColorsKt$LocalColors$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ColorsKt$LocalColors$1;-><init>(II)V

    sput-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$2:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v0, Landroidx/compose/material/ColorsKt$LocalColors$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ColorsKt$LocalColors$1;-><init>(II)V

    sput-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$3:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v0, Landroidx/compose/material/ColorsKt$LocalColors$1;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ColorsKt$LocalColors$1;-><init>(II)V

    sput-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$4:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v0, Landroidx/compose/material/ColorsKt$LocalColors$1;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ColorsKt$LocalColors$1;-><init>(II)V

    sput-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$5:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v0, Landroidx/compose/material/ColorsKt$LocalColors$1;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ColorsKt$LocalColors$1;-><init>(II)V

    sput-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$6:Landroidx/compose/material/ColorsKt$LocalColors$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/material/ColorsKt$LocalColors$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Landroidx/compose/material/Typography;

    sget-object v2, Landroidx/compose/material/TypographyKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Light:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x60

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    const/16 v0, 0x70

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide/high16 v6, -0x4008000000000000L    # -1.5

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    const/4 v12, 0x0

    const v13, 0xfdff79

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    const/16 v3, 0x3c

    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    const/16 v6, 0x48

    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    const/4 v6, 0x0

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v14

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v3, 0x30

    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    const/16 v6, 0x38

    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const/4 v15, 0x0

    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    const/4 v6, 0x0

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v6

    const/16 v4, 0x24

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    move-wide/from16 v33, v6

    move-object v6, v3

    move-wide/from16 v3, v33

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    move-object v11, v6

    const/4 v6, 0x0

    move-object/from16 v18, v11

    const/4 v11, 0x0

    move/from16 p0, v15

    move-object/from16 v15, v18

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    const/16 v18, 0x18

    move-object v6, v3

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    move-object v11, v6

    const/4 v6, 0x0

    move-object/from16 v19, v11

    const/4 v11, 0x0

    move-object/from16 p0, v1

    move-object/from16 v1, v19

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object/from16 v19, v5

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v20, 0x14

    move-object v6, v3

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide v21, 0x3fc3333333333333L    # 0.15

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    move-object v11, v6

    const/4 v6, 0x0

    move-object/from16 v23, v11

    const/4 v11, 0x0

    move-object/from16 v24, v23

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object/from16 v23, v5

    const/16 v25, 0x10

    move-object v5, v3

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    move-object/from16 v26, v5

    move-object/from16 v5, v19

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    const/16 v21, 0xe

    move-object v5, v3

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    const/4 v6, 0x0

    move-object/from16 v27, v5

    move-object/from16 v5, v23

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object v5, v3

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    const/4 v6, 0x0

    move-object/from16 v28, v5

    move-object/from16 v5, v19

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object v6, v3

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    move-object v11, v6

    const/4 v6, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v29, v16

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    const/4 v6, 0x0

    move-object/from16 v30, v3

    move-wide v3, v4

    move-object/from16 v5, v23

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v7

    const/4 v6, 0x0

    move-object/from16 v31, v3

    move-wide v3, v4

    move-object/from16 v5, v19

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v6

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    move-wide/from16 v33, v6

    move-object v6, v3

    move-wide/from16 v3, v33

    move-wide v7, v11

    const/4 v12, 0x0

    move-object v11, v6

    const/4 v6, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v32, v16

    invoke-static/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/text/font/SystemFontFamily;->Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

    invoke-static {v0, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-static {v14, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    invoke-static {v15, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    invoke-static {v1, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    move-object/from16 v6, v24

    invoke-static {v6, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v6

    move-object/from16 v7, v26

    invoke-static {v7, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    move-object/from16 v8, v27

    invoke-static {v8, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v8

    move-object/from16 v9, v28

    invoke-static {v9, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    move-object/from16 v11, v29

    invoke-static {v11, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v10

    move-object/from16 v11, v30

    invoke-static {v11, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v11

    move-object/from16 v12, v31

    invoke-static {v12, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v12

    move-object/from16 v13, v32

    invoke-static {v13, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v13

    invoke-static {v2, v3}, Landroidx/compose/material/TypographyKt;->access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v14

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v14}, Landroidx/compose/material/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    return-object v1

    :pswitch_0
    sget-object v0, Landroidx/compose/material/TypographyKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    return-object v0

    :pswitch_1
    new-instance v0, Landroidx/compose/material/Shapes;

    invoke-direct {v0}, Landroidx/compose/material/Shapes;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Landroidx/compose/material/RippleConfiguration;

    invoke-direct {v0}, Landroidx/compose/material/RippleConfiguration;-><init>()V

    return-object v0

    :pswitch_3
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    return-object v2

    :pswitch_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {}, Landroidx/compose/material/ColorsKt;->lightColors-2qZNXz8$default()Landroidx/compose/material/Colors;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
