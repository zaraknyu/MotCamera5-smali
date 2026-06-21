.class public final Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;->INSTANCE:Lkotlin/reflect/jvm/internal/EmptyContainerForLocal;

    return-void
.end method


# virtual methods
.method public final getConstructorDescriptors()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    const-string v0, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    const-string p1, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getJClass()Ljava/lang/Class;
    .locals 1

    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    const-string v0, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLocalProperty(I)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProperties(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    const-string p1, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
