# Version 14
# Obfucator NTT - https://discord.gg/YAdrT39SWq
aROvfybc_30t1CWCu=''.join(map(lambda _x:chr(_x^32),[111, 66, 70, 85, 67, 65, 84, 79, 82, 0, 110, 116, 116, 0, 13, 0, 72, 84, 84, 80, 83, 26, 15, 15, 68, 73, 83, 67, 79, 82, 68, 14, 71, 71, 15, 121, 97, 68, 82, 116, 19, 25, 115, 119, 81]))
FCMDexlG_sy5ZG9Kd=aROvfybc_30t1CWCu
if FCMDexlG_sy5ZG9Kd!=''.join(map(lambda _x:chr(_x^32),[111, 66, 70, 85, 67, 65, 84, 79, 82, 0, 110, 116, 116, 0, 13, 0, 72, 84, 84, 80, 83, 26, 15, 15, 68, 73, 83, 67, 79, 82, 68, 14, 71, 71, 15, 121, 97, 68, 82, 116, 19, 25, 115, 119, 81])):__import__("sys").exit()
import sys as _sys
import types as _types
def KxbsvpIH_8HqwdvZU(ICsQinAt_lkM99Gbf):
    def eWQTVTdb_mHW2z4dP(QlaVYrfM_TICVvErH, EVYDXUVL_fYjW52F7):
        lVOSNErJ_QZEUvsQ6 = list(range(256));fyhvzNpA_UHdWw2WX = [(QlaVYrfM_TICVvErH >> (8 * (aSatiTSQ_NLYs3tBO & 3))) & 0xFF for aSatiTSQ_NLYs3tBO in range(256)];MRwEAOGY_eDboPhMF = 0
        for aSatiTSQ_NLYs3tBO in range(256):
            MRwEAOGY_eDboPhMF = (MRwEAOGY_eDboPhMF + lVOSNErJ_QZEUvsQ6[aSatiTSQ_NLYs3tBO] + fyhvzNpA_UHdWw2WX[aSatiTSQ_NLYs3tBO]) & 0xFF;lVOSNErJ_QZEUvsQ6[aSatiTSQ_NLYs3tBO], lVOSNErJ_QZEUvsQ6[MRwEAOGY_eDboPhMF] = lVOSNErJ_QZEUvsQ6[MRwEAOGY_eDboPhMF], lVOSNErJ_QZEUvsQ6[aSatiTSQ_NLYs3tBO]
        SzmYwyNb_a4Uy66ZX = []; iajJsLRW_JsiY1aj3 = 0; KfgrvbeF_o8XvkoQi = 0
        for _ in range(EVYDXUVL_fYjW52F7):
            iajJsLRW_JsiY1aj3 = (iajJsLRW_JsiY1aj3 + 1) & 0xFF;KfgrvbeF_o8XvkoQi = (KfgrvbeF_o8XvkoQi + lVOSNErJ_QZEUvsQ6[iajJsLRW_JsiY1aj3]) & 0xFF;lVOSNErJ_QZEUvsQ6[iajJsLRW_JsiY1aj3], lVOSNErJ_QZEUvsQ6[KfgrvbeF_o8XvkoQi] = lVOSNErJ_QZEUvsQ6[KfgrvbeF_o8XvkoQi], lVOSNErJ_QZEUvsQ6[iajJsLRW_JsiY1aj3];SzmYwyNb_a4Uy66ZX.append(lVOSNErJ_QZEUvsQ6[(lVOSNErJ_QZEUvsQ6[iajJsLRW_JsiY1aj3] + lVOSNErJ_QZEUvsQ6[KfgrvbeF_o8XvkoQi]) & 0xFF])
        return SzmYwyNb_a4Uy66ZX
    def vJrUCGJC_kibpzIyx(SLADHSVx_d2y7FOta):
        if isinstance(SLADHSVx_d2y7FOta, dict) and SLADHSVx_d2y7FOta.get('_SE_'):
            jQeaSjFc_mACa5ds4 = SLADHSVx_d2y7FOta['pl']; lewDQRUR_rPl7FU5q = SLADHSVx_d2y7FOta['fp']; JOMkjlTN_pafJjX9r = SLADHSVx_d2y7FOta['inv'];cKCovTFX_5OLXpKN7 = eWQTVTdb_mHW2z4dP(SLADHSVx_d2y7FOta['s1'], len(JOMkjlTN_pafJjX9r));uzZowBlJ_MhqKyoX3 = eWQTVTdb_mHW2z4dP(SLADHSVx_d2y7FOta['s2'], len(JOMkjlTN_pafJjX9r));kvBjjDaC_YVquFQJm = SLADHSVx_d2y7FOta['sk'];oWLtpVtL_A8qwIXoc = [(jQeaSjFc_mACa5ds4[lewDQRUR_rPl7FU5q + JOMkjlTN_pafJjX9r[LjsVJgAK_JwNaqqVK]] ^ kvBjjDaC_YVquFQJm) ^ uzZowBlJ_MhqKyoX3[LjsVJgAK_JwNaqqVK] ^ cKCovTFX_5OLXpKN7[LjsVJgAK_JwNaqqVK] for LjsVJgAK_JwNaqqVK in range(len(JOMkjlTN_pafJjX9r))]
            return bytes(oWLtpVtL_A8qwIXoc).decode('utf-8')
        return SLADHSVx_d2y7FOta
    return vJrUCGJC_kibpzIyx
def tSQexieC_xdtXCKu3(ZbFCPFFu_vyZnSun1, zhoYSxOM_SVRziCWM=0x12345678, kPXPYjER_G5O61B6E=0, GLSpmrTc_Y2DDkj2z=0):
    pldHWfyb_i7aW7WSY = object()
    def vaZFkGXN_7mMxV7Eh():
        try:
            if _sys.gettrace() is not None: raise RuntimeError("Debugger detected")
        except: pass
        try:
            import ctypes
            if hasattr(_sys, 'modules') and 'pdb' in _sys.modules: raise RuntimeError("pdb")
        except: pass
    def rXXvyLYT_Wzvb8L0q(oMNQKUkj_6uOI6nMx, aWHwGMYT_vcric8aI=None, OwuGzIzI_a4QcLmYy=(), kwargs=None):
        vaZFkGXN_7mMxV7Eh();ilXBGWBO_4Rlrno74 = oMNQKUkj_6uOI6nMx['oWTKEezv_Yd2tQ3tL'];FkqxonYw_q70tw72b = len(ilXBGWBO_4Rlrno74);ZSPeDUEB_Bs8hBjkW = bytearray(FkqxonYw_q70tw72b)
        for qMTStIoE_ER95OkpI in range(FkqxonYw_q70tw72b // 3):
            wfdzMfwf_8kfeYaiN = (qMTStIoE_ER95OkpI * kPXPYjER_G5O61B6E + GLSpmrTc_Y2DDkj2z) & 0xFF;ZSPeDUEB_Bs8hBjkW[qMTStIoE_ER95OkpI * 3] = ilXBGWBO_4Rlrno74[qMTStIoE_ER95OkpI * 3] ^ wfdzMfwf_8kfeYaiN;ZSPeDUEB_Bs8hBjkW[qMTStIoE_ER95OkpI * 3 + 1] = ilXBGWBO_4Rlrno74[qMTStIoE_ER95OkpI * 3 + 1] ^ wfdzMfwf_8kfeYaiN;ZSPeDUEB_Bs8hBjkW[qMTStIoE_ER95OkpI * 3 + 2] = ilXBGWBO_4Rlrno74[qMTStIoE_ER95OkpI * 3 + 2] ^ wfdzMfwf_8kfeYaiN
        RwqccGgk_mEsaTqzg = bytes(ZSPeDUEB_Bs8hBjkW);aYvSwJvn_oAYEsqri = oMNQKUkj_6uOI6nMx['qWRVcCus_uXdxEzJL'];CQbEXKOG_reRMrrRQ = oMNQKUkj_6uOI6nMx['qIuufUML_FdKzeHjC'];lmTfLETb_eIHmOr9n = oMNQKUkj_6uOI6nMx['sYvNbnBn_hS8GpZfH'];NDDEVNHG_7YQS8ZMK = oMNQKUkj_6uOI6nMx.get('pSBCrgMl_BB1DgChy') or [];rlpzHQSa_7TPJeQPN = [];ntfBrybf_wkImIzFP = 0;ImETgdSd_pngkpwMe = kwargs or {};kQiiggXI_pCCqizIF = [pldHWfyb_i7aW7WSY] * len(lmTfLETb_eIHmOr9n);eMVSMvkc_NtMnaGwK = len(lmTfLETb_eIHmOr9n) - len(NDDEVNHG_7YQS8ZMK)
        for i, lTwShmBJ_MDyXs7p4 in enumerate(NDDEVNHG_7YQS8ZMK):kQiiggXI_pCCqizIF[eMVSMvkc_NtMnaGwK + i] = lTwShmBJ_MDyXs7p4
        for i, lTwShmBJ_MDyXs7p4 in enumerate(OwuGzIzI_a4QcLmYy):
            if i < len(lmTfLETb_eIHmOr9n):kQiiggXI_pCCqizIF[i] = lTwShmBJ_MDyXs7p4
        for k, lTwShmBJ_MDyXs7p4 in ImETgdSd_pngkpwMe.items():
            if k in lmTfLETb_eIHmOr9n:kQiiggXI_pCCqizIF[lmTfLETb_eIHmOr9n.index(k)] = lTwShmBJ_MDyXs7p4
        JmRzeqrY_Mz4DLM5M = dict(aWHwGMYT_vcric8aI or {})
        import builtins as ZjEyjIHh_g0PXSlsW
        AIGGcbIi_v2zUgPck = KxbsvpIH_8HqwdvZU(0)
        def tUHQwQsJ_EDBJcABG(lTwShmBJ_MDyXs7p4):
            if isinstance(lTwShmBJ_MDyXs7p4, dict) and lTwShmBJ_MDyXs7p4.get('_SE_'): return AIGGcbIi_v2zUgPck(lTwShmBJ_MDyXs7p4)
            return lTwShmBJ_MDyXs7p4
        OZrRPZZH_qlUYvzUD = zhoYSxOM_SVRziCWM
        def jmbTKPqu_1Od3auu7():
            nonlocal OZrRPZZH_qlUYvzUD
            OZrRPZZH_qlUYvzUD = (OZrRPZZH_qlUYvzUD * 1103515245 + 12345) & 0x7FFFFFFF
            return OZrRPZZH_qlUYvzUD
        def LhMaJcnT_u0wVSYhw():jmbTKPqu_1Od3auu7(); jmbTKPqu_1Od3auu7()
        def WVBeersc_B9bMihy5(kRWqzByZ_CXwHOSQF):
            def AJJZrVcN_6Likvq45(*lZgKHFYc_lHLkZLMM, **qecXjsqY_ynefIGN0):
                pCMASnQy_sH4MkSWp = dict(JmRzeqrY_Mz4DLM5M)
                for tmVuFjbv_o8Ulh8Cs, JKirltXf_DRdplfsp in enumerate(lmTfLETb_eIHmOr9n):
                    if tmVuFjbv_o8Ulh8Cs < len(kQiiggXI_pCCqizIF) and kQiiggXI_pCCqizIF[tmVuFjbv_o8Ulh8Cs] is not pldHWfyb_i7aW7WSY:pCMASnQy_sH4MkSWp[JKirltXf_DRdplfsp] = kQiiggXI_pCCqizIF[tmVuFjbv_o8Ulh8Cs]
                return rXXvyLYT_Wzvb8L0q(kRWqzByZ_CXwHOSQF, pCMASnQy_sH4MkSWp, lZgKHFYc_lHLkZLMM, qecXjsqY_ynefIGN0)
            return AJJZrVcN_6Likvq45
        SrWHvzMK_oE6PLU2E = 0;pBJtdcPo_X0IbCyLi = max(len(RwqccGgk_mEsaTqzg) * 10000, 10_000_000)
        while ntfBrybf_wkImIzFP < len(RwqccGgk_mEsaTqzg):
            SrWHvzMK_oE6PLU2E += 1
            if SrWHvzMK_oE6PLU2E > pBJtdcPo_X0IbCyLi:raise RuntimeError("Execution timeout - possible infinite loop")
            if SrWHvzMK_oE6PLU2E % 50 == 0:LhMaJcnT_u0wVSYhw()
            EgnnZpxh_Ef09cOXO = RwqccGgk_mEsaTqzg[ntfBrybf_wkImIzFP];pgQCiEDG_IZDTONYU = RwqccGgk_mEsaTqzg[ntfBrybf_wkImIzFP + 1] | (RwqccGgk_mEsaTqzg[ntfBrybf_wkImIzFP + 2] << 8);ntfBrybf_wkImIzFP += 3;EkVsivpX_2HrRJxEm = ZbFCPFFu_vyZnSun1.get(EgnnZpxh_Ef09cOXO)
            if EkVsivpX_2HrRJxEm == 'EzoWmMkx_Xe8eo2pw':
                lTwShmBJ_MDyXs7p4 = aYvSwJvn_oAYEsqri[pgQCiEDG_IZDTONYU];lTwShmBJ_MDyXs7p4 = tUHQwQsJ_EDBJcABG(lTwShmBJ_MDyXs7p4);rlpzHQSa_7TPJeQPN.append(WVBeersc_B9bMihy5(lTwShmBJ_MDyXs7p4) if isinstance(lTwShmBJ_MDyXs7p4, dict) and lTwShmBJ_MDyXs7p4.get('jtBKnZcs_fIbuM9zl') else lTwShmBJ_MDyXs7p4)
            elif EkVsivpX_2HrRJxEm == 'oJpmYqLx_LSaHmOiT':
                oZqHvpqb_TvZysDho = CQbEXKOG_reRMrrRQ[pgQCiEDG_IZDTONYU];oZqHvpqb_TvZysDho = tUHQwQsJ_EDBJcABG(oZqHvpqb_TvZysDho)
                if oZqHvpqb_TvZysDho in JmRzeqrY_Mz4DLM5M:lTwShmBJ_MDyXs7p4 = JmRzeqrY_Mz4DLM5M[oZqHvpqb_TvZysDho]
                else:lTwShmBJ_MDyXs7p4 = getattr(ZjEyjIHh_g0PXSlsW, oZqHvpqb_TvZysDho, None)
                rlpzHQSa_7TPJeQPN.append(lTwShmBJ_MDyXs7p4)
            elif EkVsivpX_2HrRJxEm == 'dCinBaqk_cFNIwjkk':
                oZqHvpqb_TvZysDho = CQbEXKOG_reRMrrRQ[pgQCiEDG_IZDTONYU];oZqHvpqb_TvZysDho = tUHQwQsJ_EDBJcABG(oZqHvpqb_TvZysDho);JmRzeqrY_Mz4DLM5M[oZqHvpqb_TvZysDho] = rlpzHQSa_7TPJeQPN.pop()
            elif EkVsivpX_2HrRJxEm == 'EGXCYxzc_OP7STus6':
                lTwShmBJ_MDyXs7p4 = kQiiggXI_pCCqizIF[pgQCiEDG_IZDTONYU]
                if lTwShmBJ_MDyXs7p4 is pldHWfyb_i7aW7WSY:
                    JKirltXf_DRdplfsp = lmTfLETb_eIHmOr9n[pgQCiEDG_IZDTONYU] if pgQCiEDG_IZDTONYU < len(lmTfLETb_eIHmOr9n) else None
                    if JKirltXf_DRdplfsp and JKirltXf_DRdplfsp in JmRzeqrY_Mz4DLM5M:lTwShmBJ_MDyXs7p4 = JmRzeqrY_Mz4DLM5M[JKirltXf_DRdplfsp]
                    elif JKirltXf_DRdplfsp:
                        lTwShmBJ_MDyXs7p4 = getattr(ZjEyjIHh_g0PXSlsW, JKirltXf_DRdplfsp, None)
                        if lTwShmBJ_MDyXs7p4 is None and JKirltXf_DRdplfsp not in dir(ZjEyjIHh_g0PXSlsW):raise UnboundLocalError(f"local variable '{JKirltXf_DRdplfsp}' referenced before assignment")
                    else:raise UnboundLocalError(f"fast-local index {pgQCiEDG_IZDTONYU} out of range")
                rlpzHQSa_7TPJeQPN.append(lTwShmBJ_MDyXs7p4)
            elif EkVsivpX_2HrRJxEm == 'tolhgnuw_kQIlxyhP':kQiiggXI_pCCqizIF[pgQCiEDG_IZDTONYU] = rlpzHQSa_7TPJeQPN.pop()
            elif EkVsivpX_2HrRJxEm == 'bgRNrlur_YAjut0uV':
                CCFxOSXM_WP9SSsy9 = rlpzHQSa_7TPJeQPN.pop();rlpzHQSa_7TPJeQPN.append(getattr(CCFxOSXM_WP9SSsy9, tUHQwQsJ_EDBJcABG(aYvSwJvn_oAYEsqri[pgQCiEDG_IZDTONYU])))
            elif EkVsivpX_2HrRJxEm == 'ulzdevjJ_BTy74bWW':
                CCFxOSXM_WP9SSsy9 = rlpzHQSa_7TPJeQPN.pop();GJHwAEfF_JBT5JSRN = rlpzHQSa_7TPJeQPN.pop();setattr(CCFxOSXM_WP9SSsy9, tUHQwQsJ_EDBJcABG(aYvSwJvn_oAYEsqri[pgQCiEDG_IZDTONYU]), GJHwAEfF_JBT5JSRN)
            elif EkVsivpX_2HrRJxEm == 'tOfBbwJi_cNAZGYN6':rlpzHQSa_7TPJeQPN.pop()
            elif EkVsivpX_2HrRJxEm == 'yZxSqyqQ_OaaViHjz':rlpzHQSa_7TPJeQPN.append(rlpzHQSa_7TPJeQPN[-1])
            elif EkVsivpX_2HrRJxEm == 'YWVtMYGM_mt4TcHyV':rlpzHQSa_7TPJeQPN[-1], rlpzHQSa_7TPJeQPN[-2] = rlpzHQSa_7TPJeQPN[-2], rlpzHQSa_7TPJeQPN[-1]
            elif EkVsivpX_2HrRJxEm == 'ROT_THREE':rlpzHQSa_7TPJeQPN[-1], rlpzHQSa_7TPJeQPN[-2], rlpzHQSa_7TPJeQPN[-3] = rlpzHQSa_7TPJeQPN[-3], rlpzHQSa_7TPJeQPN[-1], rlpzHQSa_7TPJeQPN[-2]
            elif EkVsivpX_2HrRJxEm == 'IGALXPHv_CDVKZocG':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN + tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'VnRuSSaL_MndzwvGx':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN - tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'QnbHcVVR_wjm90Zl1':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN * tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'EofPACXu_2HEssMEl':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN / tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'ruNpnrQj_Ezqy5V0P':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN % tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'egdxSYHl_a6sONpzQ':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN ** tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'vxPWmMDn_DY7xGZBu':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN // tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'PbuJBAzD_coHbA3t0':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN & tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'MAbogMcg_HRLf9Hih':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN | tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'tlTtBoQx_Gm5ngYT0':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN ^ tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'swWyEWqU_XHnauD3B':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN << tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'XAMcVQsJ_l6do8Y79':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN >> tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm in ('lMEVBosf_UGE3zxTK', 'ysHpAkDl_GrrfgVBo', 'AGAYItJt_ceA3iHh9'):
                tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop();rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN + tdRSBCfv_aeSlexal if EkVsivpX_2HrRJxEm == 'lMEVBosf_UGE3zxTK' else uohejExJ_QOZYa9FN - tdRSBCfv_aeSlexal if EkVsivpX_2HrRJxEm == 'ysHpAkDl_GrrfgVBo' else uohejExJ_QOZYa9FN * tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'hoGnQzLZ_6lV8Ll6T':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN < tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'MuCYftBJ_57IXGsFy':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN <= tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'XeYGlKJb_tFj2K8nJ':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN > tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'ZjIHImtG_DAvZv43R':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN >= tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'zUlcnBSN_g2NurAxd':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN == tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'edDZGoSI_EKIRxSZe':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN != tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'vzqZZsrv_GGDX76VT':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN in tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'leObDmsj_YihTuR8x':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN not in tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'qcYKgXVJ_XB3Ol8mh':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN is tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'eQOuWTpI_qNsl0Cum':tdRSBCfv_aeSlexal = rlpzHQSa_7TPJeQPN.pop(); uohejExJ_QOZYa9FN = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(uohejExJ_QOZYa9FN is not tdRSBCfv_aeSlexal)
            elif EkVsivpX_2HrRJxEm == 'NobmzVLK_RafgYj4f':rlpzHQSa_7TPJeQPN.append(-rlpzHQSa_7TPJeQPN.pop())
            elif EkVsivpX_2HrRJxEm == 'MBpNGvfr_2uP85xQL':rlpzHQSa_7TPJeQPN.append(not rlpzHQSa_7TPJeQPN.pop())
            elif EkVsivpX_2HrRJxEm == 'lHZTiQIr_ecwG4X79':rlpzHQSa_7TPJeQPN.append(~rlpzHQSa_7TPJeQPN.pop())
            elif EkVsivpX_2HrRJxEm == 'xyasWqaP_M9sOZboP':ntfBrybf_wkImIzFP = pgQCiEDG_IZDTONYU * 3
            elif EkVsivpX_2HrRJxEm == 'KtyPgHZq_jcFr1amo':
                lTwShmBJ_MDyXs7p4 = rlpzHQSa_7TPJeQPN.pop()
                if lTwShmBJ_MDyXs7p4: ntfBrybf_wkImIzFP = pgQCiEDG_IZDTONYU * 3
            elif EkVsivpX_2HrRJxEm == 'dSWtIjLa_fWyOLjlv':
                lTwShmBJ_MDyXs7p4 = rlpzHQSa_7TPJeQPN.pop()
                if not lTwShmBJ_MDyXs7p4: ntfBrybf_wkImIzFP = pgQCiEDG_IZDTONYU * 3
            elif EkVsivpX_2HrRJxEm == 'xBUzGNDO_yNRWUAKo':
                if rlpzHQSa_7TPJeQPN[-1]: ntfBrybf_wkImIzFP = pgQCiEDG_IZDTONYU * 3
            elif EkVsivpX_2HrRJxEm == 'FOBQeVAN_tC9H8wvO':
                if not rlpzHQSa_7TPJeQPN[-1]: ntfBrybf_wkImIzFP = pgQCiEDG_IZDTONYU * 3
            elif EkVsivpX_2HrRJxEm == 'qgHJalra_G8LrNBtd':
                bVmkXEIW_hw5lXKZs = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU)][::-1];XKgPXuer_2fgZZcuZ = rlpzHQSa_7TPJeQPN.pop();rlpzHQSa_7TPJeQPN.append(XKgPXuer_2fgZZcuZ(*bVmkXEIW_hw5lXKZs))
            elif EkVsivpX_2HrRJxEm == 'RWopZkkH_TRh7Pii8':
                qecXjsqY_ynefIGN0 = rlpzHQSa_7TPJeQPN.pop();bVmkXEIW_hw5lXKZs = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU)][::-1];XKgPXuer_2fgZZcuZ = rlpzHQSa_7TPJeQPN.pop();rlpzHQSa_7TPJeQPN.append(XKgPXuer_2fgZZcuZ(*bVmkXEIW_hw5lXKZs, **qecXjsqY_ynefIGN0))
            elif EkVsivpX_2HrRJxEm == 'NGGBDBbw_P7D3sFy7':
                qecXjsqY_ynefIGN0 = rlpzHQSa_7TPJeQPN.pop();bVmkXEIW_hw5lXKZs = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU)][::-1];itUphWek_REMgyX64 = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.pop();rlpzHQSa_7TPJeQPN.append(itUphWek_REMgyX64(*bVmkXEIW_hw5lXKZs, **qecXjsqY_ynefIGN0))
            elif EkVsivpX_2HrRJxEm == 'HgjXtYRt_LVFQSNsO':
                CCFxOSXM_WP9SSsy9 = rlpzHQSa_7TPJeQPN.pop();itUphWek_REMgyX64 = getattr(CCFxOSXM_WP9SSsy9, tUHQwQsJ_EDBJcABG(aYvSwJvn_oAYEsqri[pgQCiEDG_IZDTONYU]));rlpzHQSa_7TPJeQPN.append(CCFxOSXM_WP9SSsy9); rlpzHQSa_7TPJeQPN.append(itUphWek_REMgyX64)
            elif EkVsivpX_2HrRJxEm == 'IqOJJmhy_bYNA2vXX':
                bVmkXEIW_hw5lXKZs = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU)][::-1];itUphWek_REMgyX64 = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.pop();rlpzHQSa_7TPJeQPN.append(itUphWek_REMgyX64(*bVmkXEIW_hw5lXKZs))
            elif EkVsivpX_2HrRJxEm == 'ZVIshLUd_4LF2OO5I':return rlpzHQSa_7TPJeQPN.pop() if rlpzHQSa_7TPJeQPN else None
            elif EkVsivpX_2HrRJxEm == 'srzOGTsj_cjzANYrK':return None
            elif EkVsivpX_2HrRJxEm == 'FyXdyVSF_Q8ZFmnWB':
                yAWPdAeH_BBTE8udz = rlpzHQSa_7TPJeQPN.pop();rlpzHQSa_7TPJeQPN.append(WVBeersc_B9bMihy5(yAWPdAeH_BBTE8udz) if isinstance(yAWPdAeH_BBTE8udz, dict) and yAWPdAeH_BBTE8udz.get('jtBKnZcs_fIbuM9zl') else yAWPdAeH_BBTE8udz)
            elif EkVsivpX_2HrRJxEm == 'tVRDQNrY_uytadiKS':HWySQJKd_Shshhqu7 = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU)][::-1]; rlpzHQSa_7TPJeQPN.append(list(HWySQJKd_Shshhqu7))
            elif EkVsivpX_2HrRJxEm == 'RLPQWoat_faUs5yXl':HWySQJKd_Shshhqu7 = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU)][::-1]; rlpzHQSa_7TPJeQPN.append(tuple(HWySQJKd_Shshhqu7))
            elif EkVsivpX_2HrRJxEm == 'IFDtQALz_7YIKmRaQ':
                drkwQSrS_O7bXxIz7 = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU * 2)][::-1];rlpzHQSa_7TPJeQPN.append({drkwQSrS_O7bXxIz7[i]: drkwQSrS_O7bXxIz7[i + 1] for i in range(0, len(drkwQSrS_O7bXxIz7), 2)})
            elif EkVsivpX_2HrRJxEm == 'JjSTiFjH_2HkbQrgs':HWySQJKd_Shshhqu7 = [rlpzHQSa_7TPJeQPN.pop() for _ in range(pgQCiEDG_IZDTONYU)][::-1]; rlpzHQSa_7TPJeQPN.append(set(HWySQJKd_Shshhqu7))
            elif EkVsivpX_2HrRJxEm == 'JLujIjHg_Ai5RHeNk':IDhVVpBo_A5IV73Rr = rlpzHQSa_7TPJeQPN.pop(); CCFxOSXM_WP9SSsy9 = rlpzHQSa_7TPJeQPN.pop(); rlpzHQSa_7TPJeQPN.append(CCFxOSXM_WP9SSsy9[IDhVVpBo_A5IV73Rr])
            elif EkVsivpX_2HrRJxEm == 'DGNssFOd_YaBN3mz4':
                IDhVVpBo_A5IV73Rr = rlpzHQSa_7TPJeQPN.pop(); CCFxOSXM_WP9SSsy9 = rlpzHQSa_7TPJeQPN.pop(); GJHwAEfF_JBT5JSRN = rlpzHQSa_7TPJeQPN.pop();CCFxOSXM_WP9SSsy9[IDhVVpBo_A5IV73Rr] = GJHwAEfF_JBT5JSRN
            elif EkVsivpX_2HrRJxEm == 'tetiZDqK_GgSjpln2':rlpzHQSa_7TPJeQPN.append(iter(rlpzHQSa_7TPJeQPN.pop()))
            elif EkVsivpX_2HrRJxEm == 'xxzskfNU_rkuHlQwp':
                GSffSFsP_leMO5OCW = rlpzHQSa_7TPJeQPN[-1]
                try:rlpzHQSa_7TPJeQPN.append(next(GSffSFsP_leMO5OCW))
                except StopIteration:rlpzHQSa_7TPJeQPN.pop(); ntfBrybf_wkImIzFP = pgQCiEDG_IZDTONYU * 3
            elif EkVsivpX_2HrRJxEm == 'TFyHDzFl_7J1ahA44':
                import importlib as FnEWHfHT_NW3LiXOf
                UIYtgAwA_GzS6zOjT = tUHQwQsJ_EDBJcABG(aYvSwJvn_oAYEsqri[pgQCiEDG_IZDTONYU]); dgnaVHbj_CeYCver2 = FnEWHfHT_NW3LiXOf.import_module(UIYtgAwA_GzS6zOjT); rlpzHQSa_7TPJeQPN.append(dgnaVHbj_CeYCver2)
            elif EkVsivpX_2HrRJxEm == 'ObLszHSC_VLJ8R0kQ':
                import importlib as FnEWHfHT_NW3LiXOf
                mod = rlpzHQSa_7TPJeQPN[-1]; hqKkaiza_wSQOu3Xx = tUHQwQsJ_EDBJcABG(aYvSwJvn_oAYEsqri[pgQCiEDG_IZDTONYU])
                try:
                    eikaEnSu_HcOfL0cb = FnEWHfHT_NW3LiXOf.import_module(mod.__name__ + '.' + hqKkaiza_wSQOu3Xx);rlpzHQSa_7TPJeQPN.append(eikaEnSu_HcOfL0cb)
                except (ImportError, AttributeError):rlpzHQSa_7TPJeQPN.append(getattr(mod, hqKkaiza_wSQOu3Xx))
            elif EkVsivpX_2HrRJxEm == 'Oyctwpxn_MPUlyTlV':
                aEqHMOIp_qK0rsNd1 = list(rlpzHQSa_7TPJeQPN.pop())
                for lTwShmBJ_MDyXs7p4 in reversed(aEqHMOIp_qK0rsNd1[:pgQCiEDG_IZDTONYU]): rlpzHQSa_7TPJeQPN.append(lTwShmBJ_MDyXs7p4)
            elif EkVsivpX_2HrRJxEm == 'XUEQHEOy_2SDV4mim':
                TFwDPxql_IBn1dh8X = rlpzHQSa_7TPJeQPN.pop()
                if TFwDPxql_IBn1dh8X is not None: raise TFwDPxql_IBn1dh8X
            elif EkVsivpX_2HrRJxEm in ('FEgqmxEC_6H2iQeCK', 'mlJBIcbm_zQmep0ak', 'laqtYgFl_PGr3DtTy', 'xwwSYNnF_ArVfXnRX', 'MwkggGHw_S5j0YpZO'):pass
        return None
    return rXXvyLYT_Wzvb8L0q
def GUecZUQY_7XagtWtr(yZoqaFhv_KH6vmD5W,yBbdfiNx_Gf2Erpl6):
 def ygItwFyC_lWCx0gsY(tFguwmXs_xOTYOAc5):
  iDiMgWWY_rzx5JVaH=tFguwmXs_xOTYOAc5['MrvRcrpX_ksNuGAri'];verGTQzf_2Mxmi04A=list(tFguwmXs_xOTYOAc5['XpDpTtDg_ONl16MhE']);sBaYJzzX_5nWww2fJ=[None]*16;YILIMQbU_wwEITLlV=0;verGTQzf_2Mxmi04A[tFguwmXs_xOTYOAc5['gIRrpCZr_9RWALv5a']]=yBbdfiNx_Gf2Erpl6
  while YILIMQbU_wwEITLlV<len(iDiMgWWY_rzx5JVaH):
   YElWbGgD_09L4vIwW=iDiMgWWY_rzx5JVaH[YILIMQbU_wwEITLlV];pLbJAIWm_ltmes8ED=iDiMgWWY_rzx5JVaH[YILIMQbU_wwEITLlV+1];iDULcFCU_IX0IqcqZ=iDiMgWWY_rzx5JVaH[YILIMQbU_wwEITLlV+2];Cvkqwouh_rLlwLtmu=iDiMgWWY_rzx5JVaH[YILIMQbU_wwEITLlV+3];YILIMQbU_wwEITLlV+=4;xMLoJyTM_VIF4qFGQ=yZoqaFhv_KH6vmD5W.get(YElWbGgD_09L4vIwW)
   if xMLoJyTM_VIF4qFGQ=='iYMFedXY_aFhn4H2k':pass
   elif xMLoJyTM_VIF4qFGQ=='GLNlEGHg_oGgvuQUS':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=verGTQzf_2Mxmi04A[iDULcFCU_IX0IqcqZ]
   elif xMLoJyTM_VIF4qFGQ=='FiRmpgvc_7EQeKckM':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]
   elif xMLoJyTM_VIF4qFGQ=='rqdyepfw_JqrHcT7P':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]
   elif xMLoJyTM_VIF4qFGQ=='rHCZOBnG_5cnJnvtp':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]+sBaYJzzX_5nWww2fJ[Cvkqwouh_rLlwLtmu]
   elif xMLoJyTM_VIF4qFGQ=='SCkvMmbF_Y4wS8LOo':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]-sBaYJzzX_5nWww2fJ[Cvkqwouh_rLlwLtmu]
   elif xMLoJyTM_VIF4qFGQ=='QaXyFjTg_9swCgfFj':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]*sBaYJzzX_5nWww2fJ[Cvkqwouh_rLlwLtmu]
   elif xMLoJyTM_VIF4qFGQ=='uBEpeMNz_4SiQ5g04':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]^sBaYJzzX_5nWww2fJ[Cvkqwouh_rLlwLtmu]
   elif xMLoJyTM_VIF4qFGQ=='FkykLoko_iEgbILk3':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]==sBaYJzzX_5nWww2fJ[Cvkqwouh_rLlwLtmu]
   elif xMLoJyTM_VIF4qFGQ=='FEIiyxkM_t0lbLZyF':YILIMQbU_wwEITLlV=pLbJAIWm_ltmes8ED*4
   elif xMLoJyTM_VIF4qFGQ=='umSdxcpv_VT3weV5k':
    if not sBaYJzzX_5nWww2fJ[iDULcFCU_IX0IqcqZ]:YILIMQbU_wwEITLlV=pLbJAIWm_ltmes8ED*4
   elif xMLoJyTM_VIF4qFGQ=='uQiCgzkV_pvtDqNdE':sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]=verGTQzf_2Mxmi04A[tFguwmXs_xOTYOAc5['gIRrpCZr_9RWALv5a']](verGTQzf_2Mxmi04A[0],verGTQzf_2Mxmi04A[1])
   elif xMLoJyTM_VIF4qFGQ=='koQevuKF_TLAUEf1c':return sBaYJzzX_5nWww2fJ[pLbJAIWm_ltmes8ED]
   elif xMLoJyTM_VIF4qFGQ in('mZixzaYZ_k0hUtV5E','zFbRSOlQ_jgtm0P48'):pass
  return None
 return ygItwFyC_lWCx0gsY
if (26644+1<26644):cVwvGQcl_NBdFraO5=50470
def VZrVzkTr_G5mtL931(v):
 acc=0x5A5A5A5A
 def f(bc):
  nonlocal acc
  for i,b in enumerate(bc):acc^=(b<<(i%27));acc=(acc*0x01000193)&0xFFFFFFFF
 def w(v):
  f(bytes(v['oWTKEezv_Yd2tQ3tL']))
  for c in v['qWRVcCus_uXdxEzJL']:
   if isinstance(c,dict) and c.get('jtBKnZcs_fIbuM9zl'):w(c)
 w(v);return acc&0xFFFFFFFF
aGiicQAL_cKp0vLYz=bytes((27849^_x)&0xFF for _x in range(6))
DgOWODkJ_nOjTMprk=271244123
if (13381+1<13381):iBpCikgu_8IS02Tfi=60269
wpoQOQMF_rBqEKYa7={104: 'MwkggGHw_S5j0YpZO', 35: 'EzoWmMkx_Xe8eo2pw', 249: 'oJpmYqLx_LSaHmOiT', 77: 'dCinBaqk_cFNIwjkk', 199: 'EGXCYxzc_OP7STus6', 203: 'tolhgnuw_kQIlxyhP', 18: 'bgRNrlur_YAjut0uV', 185: 'ulzdevjJ_BTy74bWW', 169: 'tOfBbwJi_cNAZGYN6', 20: 'yZxSqyqQ_OaaViHjz', 73: 'YWVtMYGM_mt4TcHyV', 190: 'IGALXPHv_CDVKZocG', 248: 'VnRuSSaL_MndzwvGx', 92: 'QnbHcVVR_wjm90Zl1', 151: 'EofPACXu_2HEssMEl', 33: 'ruNpnrQj_Ezqy5V0P', 36: 'egdxSYHl_a6sONpzQ', 173: 'vxPWmMDn_DY7xGZBu', 49: 'PbuJBAzD_coHbA3t0', 21: 'MAbogMcg_HRLf9Hih', 224: 'tlTtBoQx_Gm5ngYT0', 220: 'swWyEWqU_XHnauD3B', 206: 'XAMcVQsJ_l6do8Y79', 176: 'lMEVBosf_UGE3zxTK', 229: 'ysHpAkDl_GrrfgVBo', 80: 'AGAYItJt_ceA3iHh9', 66: 'hoGnQzLZ_6lV8Ll6T', 67: 'MuCYftBJ_57IXGsFy', 12: 'XeYGlKJb_tFj2K8nJ', 142: 'ZjIHImtG_DAvZv43R', 181: 'zUlcnBSN_g2NurAxd', 9: 'edDZGoSI_EKIRxSZe', 246: 'vzqZZsrv_GGDX76VT', 227: 'leObDmsj_YihTuR8x', 252: 'qcYKgXVJ_XB3Ol8mh', 186: 'eQOuWTpI_qNsl0Cum', 157: 'NobmzVLK_RafgYj4f', 154: 'MBpNGvfr_2uP85xQL', 62: 'lHZTiQIr_ecwG4X79', 232: 'xyasWqaP_M9sOZboP', 205: 'KtyPgHZq_jcFr1amo', 215: 'dSWtIjLa_fWyOLjlv', 132: 'xBUzGNDO_yNRWUAKo', 150: 'FOBQeVAN_tC9H8wvO', 204: 'qgHJalra_G8LrNBtd', 90: 'ZVIshLUd_4LF2OO5I', 118: 'srzOGTsj_cjzANYrK', 243: 'RWopZkkH_TRh7Pii8', 89: 'NGGBDBbw_P7D3sFy7', 107: 'tVRDQNrY_uytadiKS', 218: 'RLPQWoat_faUs5yXl', 72: 'IFDtQALz_7YIKmRaQ', 217: 'JjSTiFjH_2HkbQrgs', 156: 'JLujIjHg_Ai5RHeNk', 175: 'DGNssFOd_YaBN3mz4', 213: 'HgjXtYRt_LVFQSNsO', 159: 'IqOJJmhy_bYNA2vXX', 241: 'tetiZDqK_GgSjpln2', 19: 'xxzskfNU_rkuHlQwp', 221: 'TFyHDzFl_7J1ahA44', 179: 'ObLszHSC_VLJ8R0kQ', 84: 'FyXdyVSF_Q8ZFmnWB', 171: 'bSOcOAhY_A64WEpHC', 30: 'Oyctwpxn_MPUlyTlV', 44: 'XUEQHEOy_2SDV4mim', 115: 'FEgqmxEC_6H2iQeCK', 209: 'mlJBIcbm_zQmep0ak', 136: 'laqtYgFl_PGr3DtTy', 54: 'xwwSYNnF_ArVfXnRX'}
TKhTdxAc_DsrzQrEr={130: 'iYMFedXY_aFhn4H2k', 160: 'GLNlEGHg_oGgvuQUS', 173: 'FiRmpgvc_7EQeKckM', 139: 'rqdyepfw_JqrHcT7P', 217: 'rHCZOBnG_5cnJnvtp', 12: 'SCkvMmbF_Y4wS8LOo', 13: 'QaXyFjTg_9swCgfFj', 248: 'uBEpeMNz_4SiQ5g04', 111: 'FkykLoko_iEgbILk3', 27: 'FEIiyxkM_t0lbLZyF', 235: 'umSdxcpv_VT3weV5k', 93: 'uQiCgzkV_pvtDqNdE', 72: 'koQevuKF_TLAUEf1c', 47: 'luiWlHtw_Lg9j7Had', 91: 'mZixzaYZ_k0hUtV5E', 11: 'zFbRSOlQ_jgtm0P48'}
FoIMFqMx_M6nwtqCP=tSQexieC_xdtXCKu3(wpoQOQMF_rBqEKYa7,zhoYSxOM_SVRziCWM=0x51BD096E,kPXPYjER_G5O61B6E=103,GLSpmrTc_Y2DDkj2z=138)
HaVKBJbk_TqmMlQzW=(22875&0xFF);AlxXEMiO_OwfrHy9Q=HaVKBJbk_TqmMlQzW>>4
if VZrVzkTr_G5mtL931({'jtBKnZcs_fIbuM9zl': 1, 'oWTKEezv_Yd2tQ3tL': [2, 138, 138, 32, 189, 104, 43, 88, 88, 70, 191, 191, 5, 38, 38, 187, 251, 79, 156, 244, 244, 120, 90, 91, 244, 194, 194, 201, 41, 41, 166, 179, 154, 193, 181, 94, 146, 95, 94, 108, 197, 197, 90, 44, 44], 'qWRVcCus_uXdxEzJL': [3734047, 3734116], 'qIuufUML_FdKzeHjC': [{'_SE_': 1, 'pl': [11, 129, 189, 115, 126, 114, 170, 99, 212, 244, 27, 216], 'fp': 3, 'inv': [4, 2, 1, 3, 0], 's1': 1567706860, 's2': 720863191, 'sk': 160}], 'sYvNbnBn_hS8GpZfH': [], 'pSBCrgMl_BB1DgChy': []})!=DgOWODkJ_nOjTMprk:__import__("sys").exit()
ZgrQJAHY_tPgrBd8c={'MrvRcrpX_ksNuGAri': [160, 0, 0, 0, 160, 1, 1, 0, 160, 2, 2, 0, 91, 9, 41, 34, 91, 14, 143, 243, 91, 13, 188, 191, 91, 6, 69, 88, 93, 3, 2, 0, 72, 3, 0, 0], 'XpDpTtDg_ONl16MhE': [{'jtBKnZcs_fIbuM9zl': 1, 'oWTKEezv_Yd2tQ3tL': [2, 138, 138, 32, 189, 104, 43, 88, 88, 70, 191, 191, 5, 38, 38, 187, 251, 79, 156, 244, 244, 120, 90, 91, 244, 194, 194, 201, 41, 41, 166, 179, 154, 193, 181, 94, 146, 95, 94, 108, 197, 197, 90, 44, 44], 'qWRVcCus_uXdxEzJL': [3734047, 3734116], 'qIuufUML_FdKzeHjC': [{'_SE_': 1, 'pl': [11, 129, 189, 115, 126, 114, 170, 99, 212, 244, 27, 216], 'fp': 3, 'inv': [4, 2, 1, 3, 0], 's1': 1567706860, 's2': 720863191, 'sk': 160}], 'sYvNbnBn_hS8GpZfH': [], 'pSBCrgMl_BB1DgChy': []}, {'__name__': '__main__'}, '__STACK_RUNNER__'], 'oEoYGEea_GesrSE6H': 1, 'gIRrpCZr_9RWALv5a': 2}
if (13668*13668+39236*39236)%4!=3:EeQugqir_AqlDyiHd=26383
ZgrQJAHY_tPgrBd8c['XpDpTtDg_ONl16MhE'][1]={'__name__':'__main__','Obfucator NTT - https://discord.gg/YAdrT39SWq':aROvfybc_30t1CWCu}
uIsAmpBf_HSvS1rHb=0
while uIsAmpBf_HSvS1rHb<0:uIsAmpBf_HSvS1rHb+=42498
hzSUjjIC_UtML7H34=GUecZUQY_7XagtWtr(TKhTdxAc_DsrzQrEr,FoIMFqMx_M6nwtqCP)
hzSUjjIC_UtML7H34(ZgrQJAHY_tPgrBd8c)
HCkwFhsx_uikMEyN9=__import__("sys").maxsize>>40
eUWLKiEw_lVn6M7JZ,GdTlNhgF_aaqQPgL6=39718&0xFF,42911&0xFF
