.class public abstract Landroidx/compose/material/ColorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static lightColors-2qZNXz8$default()Landroidx/compose/material/Colors;
    .locals 28

    const-wide v0, 0xff6200eeL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v3

    const-wide v0, 0xff3700b3L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v5

    const-wide v0, 0xff03dac6L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v7

    const-wide v0, 0xff018786L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v9

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->White:J

    const-wide v0, 0xffb00020L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v15

    sget-wide v19, Landroidx/compose/ui/graphics/Color;->Black:J

    new-instance v2, Landroidx/compose/material/Colors;

    const/16 v27, 0x1

    move-wide v13, v11

    move-wide/from16 v17, v11

    move-wide/from16 v21, v19

    move-wide/from16 v23, v19

    move-wide/from16 v25, v11

    invoke-direct/range {v2 .. v27}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZ)V

    return-object v2
.end method
