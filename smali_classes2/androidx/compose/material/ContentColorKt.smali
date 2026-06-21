.class public abstract Landroidx/compose/material/ContentColorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$2:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method
