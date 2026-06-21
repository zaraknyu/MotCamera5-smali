.class public final Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/ComposableSingletons$CropEditDialogKt$lambda$-1102902696$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/ComposableSingletons$CropEditDialogKt$lambda$-1102902696$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/ComposableSingletons$CropEditDialogKt$lambda$-1102902696$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/ComposableSingletons$CropEditDialogKt$lambda$-1102902696$1;->INSTANCE:Lcom/motorola/camera/adobe_scan/ui/compose/dialogs/ComposableSingletons$CropEditDialogKt$lambda$-1102902696$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7f12002b

    invoke-static {v1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v16, Landroidx/compose/ui/text/TextStyle;

    sget-object v2, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v3, v2, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v5, v5, Lcom/motorola/camera/ui/compose/Dimensions;->dialogFontSize:J

    new-instance v7, Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->dialogTextWeight:I

    invoke-direct {v7, v8}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v8, v2, Lcom/motorola/camera/ui/compose/Dimensions;->dialogLetterSpacing:J

    const-wide/16 v11, 0x0

    const v13, 0xffff78

    const/4 v10, 0x0

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v19, 0x0

    const v20, 0xfffe

    move-object/from16 v17, v0

    move-object v0, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
