.class public abstract Landroidx/compose/material/ContentAlphaKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalContentAlpha:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$1:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material/ContentAlphaKt;->LocalContentAlpha:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method
