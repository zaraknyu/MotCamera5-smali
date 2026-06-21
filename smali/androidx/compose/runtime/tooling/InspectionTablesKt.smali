.class public abstract Landroidx/compose/runtime/tooling/InspectionTablesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalInspectionTables:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v1, Landroidx/compose/runtime/tooling/InspectionTablesKt$LocalInspectionTables$1;->INSTANCE:Landroidx/compose/runtime/tooling/InspectionTablesKt$LocalInspectionTables$1;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
