.class public final Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 73

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-static {v6}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const v1, 0x6d4e4a2b

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroidx/compose/material3/ButtonKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    move-object v2, v1

    goto/16 :goto_2

    :cond_2
    const v1, 0x6d4f880a

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x1060060

    invoke-virtual {v3, v1, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v7

    const v5, 0x1060061

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v9

    const v5, 0x106005e

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v11

    const v5, 0x106005f

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v13

    const v5, 0x106008b

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v15

    const v5, 0x1060064

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v17

    const v5, 0x1060065

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v19

    const v5, 0x1060062

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v21

    const v5, 0x1060063

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v23

    const v5, 0x1060068

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v25

    const v5, 0x1060069

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v27

    const v5, 0x1060066

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v29

    const v5, 0x1060067

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v31

    const v5, 0x106006a

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v33

    const v5, 0x106006b

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v35

    const v5, 0x106006c

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v37

    const v5, 0x106006d

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v39

    const v5, 0x1060075

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v41

    const v5, 0x1060076

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v43

    const v5, 0x1060097

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v47

    const v5, 0x1060098

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v49

    const v5, 0x1060077

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v51

    const v5, 0x10600c0

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v53

    const v5, 0x1060073

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v57

    const v5, 0x1060074

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v69

    const v5, 0x1060070

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v59

    const v5, 0x1060071

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v61

    const v5, 0x1060072

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v63

    const v5, 0x106006e

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v65

    const v5, 0x106006f

    invoke-virtual {v3, v1, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v67

    invoke-virtual {v3, v1, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v45

    const/high16 v71, 0x13c00000

    const/16 v72, 0x0

    const-wide/16 v55, 0x0

    invoke-static/range {v7 .. v72}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_1

    :goto_2
    iget-object v5, v0, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_3
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

    if-ne v1, v2, :cond_4

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_4
    :goto_4
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroidx/compose/material3/ButtonKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    iget-object v4, v0, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
