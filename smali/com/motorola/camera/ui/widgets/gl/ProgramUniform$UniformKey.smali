.class public final enum Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DASH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DIRECTION:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum USE_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum UV_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum Y_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final mLookupMap:Ljava/util/HashMap;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string/jumbo v0, "u_Texture"

    const-string v2, "TEXTURE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v0, 0x1

    const-string/jumbo v4, "u_Opacity"

    const-string v5, "OPACITY"

    invoke-direct {v2, v5, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move v0, v3

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v4, 0x2

    const-string/jumbo v5, "u_OpacityBottom"

    const-string v6, "OPACITY_BOTTOM"

    invoke-direct {v3, v6, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v5, 0x3

    const-string/jumbo v6, "u_OpacityFrom"

    const-string v7, "OPACITY_FROM"

    invoke-direct {v4, v7, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v6, 0x4

    const-string/jumbo v7, "u_OpacityTo"

    const-string v8, "OPACITY_TO"

    invoke-direct {v5, v8, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v7, 0x5

    const-string/jumbo v8, "u_OpacityFrom2"

    const-string v9, "OPACITY_FROM2"

    invoke-direct {v6, v9, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v8, 0x6

    const-string/jumbo v9, "u_OpacityTo2"

    const-string v10, "OPACITY_TO2"

    invoke-direct {v7, v10, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v9, 0x7

    const-string/jumbo v10, "u_MVPMatrix"

    const-string v11, "MVP_MATRIX"

    invoke-direct {v8, v11, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v10, 0x8

    const-string/jumbo v11, "u_SphereMVPMatrix"

    const-string v12, "SPHERE_MVP_MATRIX"

    invoke-direct {v9, v12, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v11, 0x9

    const-string/jumbo v12, "u_STMatrix"

    const-string v13, "ST_MATRIX"

    invoke-direct {v10, v13, v11, v12}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v12, 0xa

    const-string/jumbo v13, "u_Alpha"

    const-string v14, "ALPHA"

    invoke-direct {v11, v14, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v13, 0xb

    const-string/jumbo v14, "u_Color"

    const-string v15, "COLOR"

    invoke-direct {v12, v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v14, 0xc

    const-string/jumbo v15, "u_Y_texture"

    const-string v0, "Y_TEXTURE"

    invoke-direct {v13, v0, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->Y_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v0, 0xd

    const-string/jumbo v15, "u_UV_texture"

    move-object/from16 v17, v1

    const-string v1, "UV_TEXTURE"

    invoke-direct {v14, v1, v0, v15}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->UV_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v0, 0xe

    const-string/jumbo v1, "u_Diagonal"

    move-object/from16 v18, v2

    const-string v2, "DIAGONAL"

    invoke-direct {v15, v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v1, 0xf

    const-string/jumbo v2, "u_Invert"

    move-object/from16 v19, v3

    const-string v3, "INVERT"

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x10

    const-string/jumbo v3, "u_Factor"

    move-object/from16 v20, v0

    const-string v0, "FACTOR"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x11

    const-string/jumbo v3, "u_ColorForeground"

    move-object/from16 v21, v1

    const-string v1, "COLOR_FG"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x12

    const-string/jumbo v3, "u_ColorBackground"

    move-object/from16 v22, v0

    const-string v0, "COLOR_BG"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x13

    const-string/jumbo v3, "u_Radius"

    move-object/from16 v23, v1

    const-string v1, "RADIUS"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x14

    const-string/jumbo v3, "u_Radii"

    move-object/from16 v24, v0

    const-string v0, "RADII"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x15

    const-string/jumbo v3, "u_Angles"

    move-object/from16 v25, v1

    const-string v1, "ANGLES"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x16

    const-string/jumbo v3, "u_Size"

    move-object/from16 v26, v0

    const-string v0, "SIZE"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x17

    const-string/jumbo v3, "u_MiddleSize"

    move-object/from16 v27, v1

    const-string v1, "MIDDLE_SIZE"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x18

    const-string/jumbo v3, "u_HollowSize"

    move-object/from16 v28, v0

    const-string v0, "HOLLOW_SIZE"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x19

    const-string/jumbo v3, "u_HollowTop"

    move-object/from16 v29, v1

    const-string v1, "HOLLOW_TOP"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x1a

    const-string/jumbo v3, "u_TopGuide"

    move-object/from16 v30, v0

    const-string v0, "TOP_GUIDE"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x1b

    const-string/jumbo v3, "u_BottomGuide"

    move-object/from16 v31, v1

    const-string v1, "BOTTOM_GUIDE"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x1c

    const-string/jumbo v3, "u_Mask"

    move-object/from16 v32, v0

    const-string v0, "MASK"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x1d

    const-string/jumbo v3, "u_ColorChange"

    move-object/from16 v33, v1

    const-string v1, "COLOR_CHANGE"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x1e

    const-string/jumbo v3, "u_ShapeChange"

    move-object/from16 v34, v0

    const-string v0, "SHAPE_CHANGE"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x1f

    const-string/jumbo v3, "u_ExclusionRect"

    move-object/from16 v35, v1

    const-string v1, "EXCLUSION_RECT"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x20

    const-string/jumbo v3, "u_Dash"

    move-object/from16 v36, v0

    const-string v0, "DASH"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DASH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x21

    const-string/jumbo v3, "u_LineWidth"

    move-object/from16 v37, v1

    const-string v1, "LINE_WIDTH"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x22

    const-string/jumbo v3, "u_Direction"

    move-object/from16 v38, v0

    const-string v0, "DIRECTION"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIRECTION:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x23

    const-string/jumbo v3, "u_Darkness"

    move-object/from16 v39, v1

    const-string v1, "DARKNESS"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x24

    const-string/jumbo v3, "u_UseTexture"

    move-object/from16 v40, v0

    const-string v0, "USE_TEXTURE"

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->USE_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v0, v37

    move-object/from16 v37, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v25

    move-object/from16 v25, v29

    move-object/from16 v29, v33

    move-object/from16 v33, v0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v16, v20

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v26, v30

    move-object/from16 v27, v31

    move-object/from16 v28, v32

    move-object/from16 v30, v34

    move-object/from16 v31, v35

    move-object/from16 v32, v36

    move-object/from16 v34, v38

    move-object/from16 v35, v39

    move-object/from16 v36, v40

    const/4 v0, 0x0

    filled-new-array/range {v1 .. v37}, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    return-object v0
.end method
