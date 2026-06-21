.class public final enum Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Fold_Landscape:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Fold_Portrait:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;


# instance fields
.field public final carouselBottom:F

.field public final height:F

.field public final modeControlBarSize:F

.field public final preview11Align:I

.field public final preview11Margin:I

.field public final preview169Align:I

.field public final preview169Margin:I

.field public final preview43Align:I

.field public final preview43Margin:I

.field public final uiBottomAlign:I

.field public final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout20_9"

    const/4 v2, 0x0

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/16 v16, 0x2

    const/16 v8, 0xb8

    const/16 v10, 0x74

    const/16 v12, 0x74

    const/16 v20, 0x4

    move/from16 v9, v16

    move/from16 v11, v16

    move/from16 v7, v16

    move/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    sput-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/16 v17, 0x7e

    const/16 v19, 0x7e

    const-string v8, "Layout21_9"

    const/4 v9, 0x1

    const/high16 v10, 0x44520000    # 840.0f

    const/high16 v11, 0x43b40000    # 360.0f

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v13, 0x42800000    # 64.0f

    const/16 v15, 0xc2

    move/from16 v14, v16

    move/from16 v18, v14

    move-object v7, v1

    invoke-direct/range {v7 .. v20}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    new-instance v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v8, "Layout22_9"

    const/4 v9, 0x2

    const/high16 v10, 0x445c0000    # 880.0f

    const/high16 v12, 0x42900000    # 72.0f

    const/high16 v13, 0x42b00000    # 88.0f

    const/16 v15, 0xc5

    const/16 v17, 0x92

    const/16 v19, 0x71

    const/16 v20, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v20}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    sput-object v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v8, "Fold_Portrait"

    const/4 v9, 0x3

    const/high16 v10, 0x451b0000    # 2480.0f

    const v11, 0x450b8000    # 2232.0f

    const/4 v14, 0x6

    const/4 v15, 0x0

    move/from16 v18, v16

    move-object v7, v3

    invoke-direct/range {v7 .. v20}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    sput-object v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Fold_Portrait:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v8, "Fold_Landscape"

    const/4 v9, 0x4

    const v10, 0x450b8000    # 2232.0f

    const/high16 v11, 0x451b0000    # 2480.0f

    move-object v7, v4

    invoke-direct/range {v7 .. v20}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    sput-object v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Fold_Landscape:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    new-instance v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v6, "Layout4_3"

    const/4 v7, 0x5

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x1

    const/4 v13, 0x0

    const/16 v25, 0x1

    move/from16 v14, v19

    move/from16 v16, v19

    move/from16 v12, v19

    move/from16 v18, v25

    invoke-direct/range {v5 .. v18}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    new-instance v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v13, "Layout3_4"

    const/4 v14, 0x6

    const/high16 v15, 0x40400000    # 3.0f

    const/high16 v16, 0x40800000    # 4.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v21, v19

    move/from16 v23, v19

    move-object v12, v6

    invoke-direct/range {v12 .. v25}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    new-instance v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v13, "Layout3_418"

    const/4 v14, 0x7

    const v16, 0x4085c28f    # 4.18f

    move-object v12, v7

    invoke-direct/range {v12 .. v25}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    new-instance v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v13, "Layout117_1"

    const/16 v14, 0x8

    const/high16 v15, 0x449f0000    # 1272.0f

    const/high16 v16, 0x44870000    # 1080.0f

    move-object v12, v8

    invoke-direct/range {v12 .. v25}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    new-instance v9, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v13, "Layout1_1"

    const/16 v14, 0x9

    const v15, 0x44854000    # 1066.0f

    const/high16 v16, 0x44840000    # 1056.0f

    move-object v12, v9

    invoke-direct/range {v12 .. v25}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFIIIIIII)V

    filled-new-array/range {v0 .. v9}, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFFFIIIIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iput p3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    iput p5, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    iput p6, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->modeControlBarSize:F

    iput p7, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview11Align:I

    iput p9, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    iput p11, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    iput p13, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    iput p8, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview11Margin:I

    iput p10, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Margin:I

    iput p12, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Margin:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object v0
.end method
