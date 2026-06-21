.class public abstract Lcom/motorola/camera/ui/compose/ThemeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final CameraTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 3

    const v0, -0x653cf7a5

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/compose/CustomColorsKt;->DarkCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LightCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

    :goto_1
    sget-object v1, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v2, 0x42f6fd1b

    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/motorola/camera/ui/compose/ThemeKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/motorola/camera/ui/compose/ThemeKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final LightDarkCameraTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 3

    const v0, -0x554171d5

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/compose/CustomColorsKt;->DarkCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LightCustomColors:Lcom/motorola/camera/ui/compose/CustomColors;

    :goto_1
    sget-object v1, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/compose/ThemeKt$CameraTheme$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v2, -0x3d2e0e95

    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/motorola/camera/ui/compose/ThemeKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/motorola/camera/ui/compose/ThemeKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
