.class public abstract Lcom/motorola/camera/ui/compose/CustomColorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DarkCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

.field public static final LightCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

.field public static final LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->White:J

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    const-wide v5, 0xff43474eL

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v9

    const-wide v5, 0xff1a1c1eL

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v11

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v13

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v17

    new-instance v0, Lcom/motorola/camera/ui/compose/CustomColors;

    const v19, 0x7e06f9

    move-wide v5, v1

    move-wide v7, v1

    move-wide v15, v1

    invoke-direct/range {v0 .. v19}, Lcom/motorola/camera/ui/compose/CustomColors;-><init>(JJJJJJJJJI)V

    sput-object v0, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LightCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

    const-wide v3, 0xff363940L

    move-wide v5, v3

    move-wide v3, v1

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v1

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v7

    const-wide v5, 0xfff1f0f4L

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v9

    const-wide v5, 0xff1b2029L

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v15

    const-wide v5, 0x80ffffffL

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v5

    new-instance v0, Lcom/motorola/camera/ui/compose/CustomColors;

    move-wide v11, v3

    move-wide v13, v3

    move-wide/from16 v17, v3

    invoke-direct/range {v0 .. v19}, Lcom/motorola/camera/ui/compose/CustomColors;-><init>(JJJJJJJJJI)V

    sput-object v0, Lcom/motorola/camera/ui/compose/CustomColorsKt;->DarkCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
