.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;
.super Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "KSuspendFunction"

    invoke-direct {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;

    return-void
.end method
